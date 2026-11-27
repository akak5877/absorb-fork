import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../providers/auth_provider.dart';
import '../providers/library_provider.dart';
import '../screens/app_shell.dart';
import '../services/audio_player_service.dart';
import '../services/chapter_lookup.dart';
import '../services/chromecast_service.dart';
import 'absorbing_shared.dart';

/// Height of one chapter row. The list uses a fixed [itemExtent] so the offset
/// used to reveal the current chapter is exact instead of estimated.
const double _rowExtent = 56.0;

void showChaptersSheet({
  required BuildContext context,
  required Color accent,
  required TextTheme tt,
  required List<dynamic> chapters,
  required double totalDuration,
  required double currentPosition,
  required bool isPlaybackActive,
  required bool isCastingThis,
  required double displaySpeed,
  required AudioPlayerService player,
  String? itemId,
}) {
  if (chapters.isEmpty) return;

  // Overlap-aware lookup: raw `end` values that run past the next chapter's
  // start (or are missing entirely) used to resolve to -1 here, which meant
  // the sheet opened at the top instead of at the chapter being played.
  final currentIdx = ChapterLookup.indexAtOverlapAware(
        chapters,
        currentPosition,
        totalDuration,
      ) ??
      -1;

  final cast = ChromecastService();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    builder: (ctx) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      minChildSize: 0.05,
      snap: true,
      maxChildSize: 0.9,
      builder: (_, sc) => _ChaptersBody(
        scrollController: sc,
        sheetContext: ctx,
        accent: accent,
        tt: tt,
        chapters: chapters,
        totalDuration: totalDuration,
        currentIdx: currentIdx,
        isPlaybackActive: isPlaybackActive,
        isCastingThis: isCastingThis,
        displaySpeed: displaySpeed,
        player: player,
        itemId: itemId,
        cast: cast,
      ),
    ),
  );
}

class _ChaptersBody extends StatefulWidget {
  const _ChaptersBody({
    required this.scrollController,
    required this.sheetContext,
    required this.accent,
    required this.tt,
    required this.chapters,
    required this.totalDuration,
    required this.currentIdx,
    required this.isPlaybackActive,
    required this.isCastingThis,
    required this.displaySpeed,
    required this.player,
    required this.itemId,
    required this.cast,
  });

  final ScrollController scrollController;
  final BuildContext sheetContext;
  final Color accent;
  final TextTheme tt;
  final List<dynamic> chapters;
  final double totalDuration;
  final int currentIdx;
  final bool isPlaybackActive;
  final bool isCastingThis;
  final double displaySpeed;
  final AudioPlayerService player;
  final String? itemId;
  final ChromecastService cast;

  @override
  State<_ChaptersBody> createState() => _ChaptersBodyState();
}

class _ChaptersBodyState extends State<_ChaptersBody> {
  Timer? _revealTimer;
  int _revealTicks = 0;

  @override
  void initState() {
    super.initState();
    _revealCurrentChapter();
  }

  /// The sheet animates in and the list has no scroll extent until it has been
  /// laid out, so a single post-frame jump usually landed on 0. Poll for a
  /// usable controller for a moment and jump exactly once.
  void _revealCurrentChapter() {
    if (widget.currentIdx <= 0) return;
    _revealTimer?.cancel();
    _revealTicks = 0;
    _revealTimer = Timer.periodic(const Duration(milliseconds: 60), (t) {
      if (!mounted) {
        t.cancel();
        return;
      }
      final c = widget.scrollController;
      final ready = c.hasClients && c.position.maxScrollExtent > 0;
      if (!ready) {
        if (++_revealTicks > 30) t.cancel(); // give up after ~1.8 s
        return;
      }
      t.cancel();
      // Keep one row of context above the current chapter.
      final target = ((widget.currentIdx - 1) * _rowExtent)
          .clamp(0.0, c.position.maxScrollExtent);
      c.jumpTo(target);
    });
  }

  @override
  void dispose() {
    _revealTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final chapters = widget.chapters;
    final accent = widget.accent;
    final tt = widget.tt;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).bottomSheetTheme.backgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(color: accent.withValues(alpha: 0.2), width: 1),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.24),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Text(l.chaptersCount(chapters.length),
              style: tt.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              controller: widget.scrollController,
              itemExtent: _rowExtent,
              itemCount: chapters.length,
              itemBuilder: (_, i) {
                final ch = chapters[i] as Map<String, dynamic>;
                final chTitle =
                    ch['title'] as String? ?? l.chapterNumber(i + 1);
                // Same overlap-aware bounds the sheet used to pick the row to
                // reveal, so the highlight, the percentages and the durations
                // all agree with it instead of trusting a raw `end` that may be
                // missing or overlapping the next chapter.
                final b = ChapterLookup.boundsAt(
                    chapters, i, widget.totalDuration);
                final start = b?.start ?? 0;
                final rawEnd = b?.end ?? 0;
                final end = rawEnd.isFinite
                    ? rawEnd
                    : (widget.totalDuration > start
                        ? widget.totalDuration
                        : start);
                final pos = widget.isCastingThis
                    ? widget.cast.castPosition.inMilliseconds / 1000.0
                    : (widget.player.currentItemId != null
                        ? widget.player.position.inMilliseconds / 1000.0
                        : 0.0);
                final isCurrent =
                    widget.isPlaybackActive && pos >= start && pos < end;
                final isFinished = widget.isPlaybackActive && pos >= end;
                final pct = widget.totalDuration > 0
                    ? (end / widget.totalDuration * 100).round()
                    : 0;
                final cs = Theme.of(context).colorScheme;
                return ListTile(
                  dense: true,
                  selected: isCurrent,
                  selectedTileColor: accent.withValues(alpha: 0.1),
                  leading: SizedBox(
                    width: 28,
                    child: isFinished
                        ? Icon(Icons.check_rounded,
                            size: 16,
                            color: cs.onSurfaceVariant.withValues(alpha: 0.4))
                        : Text('${i + 1}',
                            textAlign: TextAlign.center,
                            style: tt.labelMedium?.copyWith(
                                fontWeight:
                                    isCurrent ? FontWeight.w700 : FontWeight.w400,
                                color:
                                    isCurrent ? accent : cs.onSurfaceVariant)),
                  ),
                  title: Text(
                    chTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: tt.bodyMedium?.copyWith(
                      fontWeight: isCurrent ? FontWeight.w600 : FontWeight.w400,
                      color: isCurrent
                          ? cs.onSurface
                          : isFinished
                              ? cs.onSurface.withValues(alpha: 0.4)
                              : cs.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text('$pct%',
                        style: tt.labelSmall?.copyWith(
                            color: isCurrent
                                ? accent.withValues(alpha: 0.7)
                                : cs.onSurface.withValues(alpha: 0.24),
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(width: 8),
                    Text(fmtDur((end - start) / widget.displaySpeed),
                        style: tt.labelSmall
                            ?.copyWith(color: cs.onSurfaceVariant)),
                  ]),
                  onTap: () => _onTap(chTitle, start),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onTap(String chTitle, double start) async {
    final ctx = widget.sheetContext;
    if (widget.isPlaybackActive) {
      final seekDur = Duration(seconds: start.round());
      if (widget.isCastingThis) {
        widget.cast.seekTo(seekDur);
      } else {
        widget.player.seekTo(seekDur);
      }
      Navigator.pop(ctx);
      return;
    }
    final itemId = widget.itemId;
    if (itemId == null) return;
    final l = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: ctx,
      builder: (dlg) => AlertDialog(
        title: Text(l.cardChaptersPlayFromChapterTitle),
        content: Text(l.cardChaptersPlayFromChapterContent(chTitle)),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(dlg, false),
              child: Text(l.cancel)),
          FilledButton(
              onPressed: () => Navigator.pop(dlg, true),
              child: Text(l.cardChaptersPlay)),
        ],
      ),
    );
    if (confirmed != true || !ctx.mounted) return;
    Navigator.pop(ctx);
    final api = ctx.read<AuthProvider>().apiService;
    if (api == null) return;
    final lib = ctx.read<LibraryProvider>();
    final fullItem = await api.getLibraryItem(itemId);
    if (fullItem == null) return;
    final media = fullItem['media'] as Map<String, dynamic>? ?? {};
    final metadata = media['metadata'] as Map<String, dynamic>? ?? {};
    final title = metadata['title'] as String? ?? '';
    final author = metadata['authorName'] as String? ?? '';
    final coverUrl = lib.getCoverUrl(itemId);
    final dur =
        (media['duration'] is num) ? (media['duration'] as num).toDouble() : 0.0;
    final chs = (media['chapters'] as List<dynamic>?) ?? [];
    await widget.player.playItem(
      api: api,
      itemId: itemId,
      title: title,
      author: author,
      coverUrl: coverUrl,
      totalDuration: dur,
      chapters: chs,
      startTime: start,
      forceStartTime: true,
      libraryId: fullItem['libraryId'] as String?,
    );
    AppShell.goToAbsorbingGlobal();
  }
}
