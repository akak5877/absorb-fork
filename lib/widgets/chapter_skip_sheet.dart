import 'dart:async';

import 'package:flutter/material.dart';

import '../services/audio_player_service.dart';
import '../services/scoped_prefs.dart';

/// Opens the per-album "skip chapter intro/outro" settings sheet.
Future<void> showChapterSkipSheet(
  BuildContext context, {
  required String bookId,
  required String bookTitle,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (_) => ChapterSkipSheet(bookId: bookId, bookTitle: bookTitle),
  );
}

/// Per-book settings for skipping the first N seconds of every chapter and
/// jumping over the last N seconds. Stored in ScopedPrefs keyed by item id so
/// each album keeps its own values.
class ChapterSkipSheet extends StatefulWidget {
  const ChapterSkipSheet({
    super.key,
    required this.bookId,
    required this.bookTitle,
  });

  final String bookId;
  final String bookTitle;

  @override
  State<ChapterSkipSheet> createState() => _ChapterSkipSheetState();
}

class _ChapterSkipSheetState extends State<ChapterSkipSheet> {
  static const _maxSeconds = 120;

  bool _loading = true;
  bool _enabled = false;
  bool _toast = true;
  int _intro = 10;
  int _outro = 20;
  Timer? _saveDebounce;

  String get _enabledKey => 'chapterSkipEnabled_${widget.bookId}';
  String get _introKey => 'chapterSkipIntro_${widget.bookId}';
  String get _outroKey => 'chapterSkipOutro_${widget.bookId}';
  String get _toastKey => 'chapterSkipToast_${widget.bookId}';

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _saveDebounce?.cancel();
    // Never let a drag that ended without onChangeEnd lose the value.
    _persist();
    super.dispose();
  }

  Future<void> _load() async {
    final savedEnabled = await ScopedPrefs.getBool(_enabledKey);
    final enabled = savedEnabled ?? false;
    final savedIntro = await ScopedPrefs.getInt(_introKey);
    final savedOutro = await ScopedPrefs.getInt(_outroKey);
    final defaultIntro = await ScopedPrefs.getInt('chapterSkipDefaultIntro');
    final defaultOutro = await ScopedPrefs.getInt('chapterSkipDefaultOutro');
    final intro = savedIntro ?? defaultIntro ?? 10;
    final outro = savedOutro ?? defaultOutro ?? 20;
    final toast = await ScopedPrefs.getBool(_toastKey) ?? true;
    if (!mounted) return;
    setState(() {
      _enabled = enabled;
      _intro = intro.clamp(0, _maxSeconds).toInt();
      _outro = outro.clamp(0, _maxSeconds).toInt();
      _toast = toast;
      _loading = false;
    });
  }

  Future<void> _persist() async {
    await ScopedPrefs.setBool(_enabledKey, _enabled);
    await ScopedPrefs.setInt(_introKey, _intro);
    await ScopedPrefs.setInt(_outroKey, _outro);
    await ScopedPrefs.setBool(_toastKey, _toast);
    // Remember the last tuned seconds so the next album starts from them
    // instead of falling back to the 10/20 factory defaults. The on/off state
    // stays per album on purpose.
    await ScopedPrefs.setInt('chapterSkipDefaultIntro', _intro);
    await ScopedPrefs.setInt('chapterSkipDefaultOutro', _outro);
    await AudioPlayerService().reloadChapterSkipSettings();
  }

  /// Sliders fire dozens of times while dragging; write once it settles, and
  /// once more from dispose so closing mid-drag still keeps the value.
  void _scheduleSave() {
    _saveDebounce?.cancel();
    _saveDebounce = Timer(const Duration(milliseconds: 250), _persist);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final title = widget.bookTitle.trim().isEmpty ? '当前专辑' : widget.bookTitle;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: _loading
          ? const Padding(
              padding: EdgeInsets.symmetric(vertical: 48),
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.content_cut_rounded, size: 20, color: cs.primary),
                    const SizedBox(width: 8),
                    Text(
                      '跳过片头 / 片尾',
                      style: tt.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '仅对《$title》生效，按每章单独计算',
                  style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                ),
                const SizedBox(height: 4),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('启用'),
                  subtitle: Text(
                    _enabled ? '播放时自动跳过每章的开头与结尾' : '关闭时与原生播放完全一致',
                    style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                  ),
                  value: _enabled,
                  onChanged: (v) {
                    setState(() => _enabled = v);
                    _persist();
                  },
                ),
                const Divider(height: 1),
                _secondsRow(
                  label: '每章片头跳过',
                  value: _intro,
                  onChanged: (v) {
                    setState(() => _intro = v);
                    _scheduleSave();
                  },
                  onSettled: _persist,
                ),
                const SizedBox(height: 4),
                _secondsRow(
                  label: '每章片尾跳过',
                  value: _outro,
                  onChanged: (v) {
                    setState(() => _outro = v);
                    _scheduleSave();
                  },
                  onSettled: _persist,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('显示跳过提示'),
                  subtitle: Text(
                    '每次自动跳过时在屏幕上方提示实际跳过的秒数',
                    style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                  ),
                  value: _toast,
                  onChanged: (v) {
                    setState(() => _toast = v);
                    _persist();
                  },
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline_rounded,
                          size: 16, color: cs.onSurfaceVariant),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _enabled
                              ? '当前生效：进入每章先跳到「章首 + $_intro 秒」；'
                                  '播放到「章尾 − $_outro 秒」时自动进入下一章'
                                  '（下一章同样再跳 $_intro 秒）。最后一章不跳结尾。'
                              : '开启后：进入每章先跳到「章首 + N 秒」，'
                                  '播放到「章尾 − N 秒」时自动进入下一章。',
                          style: tt.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () async {
                      await _persist();
                      if (context.mounted) Navigator.of(context).pop();
                    },
                    child: const Text('保存并关闭'),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _secondsRow({
    required String label,
    required int value,
    required ValueChanged<int> onChanged,
    required VoidCallback onSettled,
  }) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant)),
            Text(
              '$value 秒',
              style: tt.bodyMedium?.copyWith(
                color: _enabled ? cs.primary : cs.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Slider(
          value: value.toDouble(),
          min: 0,
          max: _maxSeconds.toDouble(),
          divisions: _maxSeconds,
          label: '$value 秒',
          onChanged: (v) => onChanged(v.round()),
          onChangeEnd: (_) => onSettled(),
        ),
      ],
    );
  }
}
