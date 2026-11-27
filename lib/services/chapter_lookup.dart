/// Pure chapter index lookup, extracted from AudioPlayerService.
///
/// Finds which chapter contains a given playback position. Used by the
/// audio handler to drive Android Auto's current-chapter highlight,
/// notification chapter mode, and the queue index.
///
/// Extracted so the boundary logic can be unit-tested without spinning up
/// just_audio. Behavior must match the inline loop in
/// `audio_player_service.dart` exactly. Change one, change both.
class ChapterLookup {
  /// Return the index of the chapter containing [positionSeconds], or `null`
  /// if no chapter contains it (or if the chapter list is empty).
  ///
  /// Each chapter is expected to be a `Map<String, dynamic>` with `start`
  /// and `end` numeric fields (in seconds). Missing `start` defaults to 0;
  /// missing `end` defaults to [totalDuration].
  ///
  /// Boundary semantics: `start <= positionSeconds < end` (inclusive at
  /// start, exclusive at end). This means the boundary instant belongs to
  /// the next chapter, not the previous one.
  static int? indexAt(
    List<dynamic> chapters,
    double positionSeconds,
    double totalDuration,
  ) {
    if (chapters.isEmpty) return null;
    for (int i = 0; i < chapters.length; i++) {
      final ch = chapters[i] as Map<String, dynamic>;
      final start = (ch['start'] as num?)?.toDouble() ?? 0;
      final end = (ch['end'] as num?)?.toDouble() ?? totalDuration;
      if (positionSeconds >= start && positionSeconds < end) return i;
    }
    return null;
  }

  /// Effective `[start, end)` bounds for chapter [index], with the end clamped
  /// to the next chapter's start and fallbacks for libraries that only store
  /// starts. Returns null when [index] is out of range.
  ///
  /// The chapter sheet uses this for its current-row highlight so it agrees
  /// with [indexAtOverlapAware] instead of comparing against a raw `end` that
  /// may be missing, zero, or overlapping.
  static ({double start, double end})? boundsAt(
    List<dynamic> chapters,
    int index,
    double totalDuration,
  ) {
    if (index < 0 || index >= chapters.length) return null;
    final ch = chapters[index] as Map<String, dynamic>;
    final start = (ch['start'] as num?)?.toDouble() ?? 0;
    var end = (ch['end'] as num?)?.toDouble() ?? 0;
    if (index + 1 < chapters.length) {
      final nextStart =
          ((chapters[index + 1] as Map<String, dynamic>)['start'] as num?)
              ?.toDouble();
      if (nextStart != null &&
          nextStart > start &&
          (end <= start || nextStart < end)) {
        end = nextStart;
      }
    }
    if (end <= start) {
      if (index + 1 < chapters.length) {
        end = ((chapters[index + 1] as Map<String, dynamic>)['start'] as num?)
                ?.toDouble() ??
            double.infinity;
      } else {
        end = totalDuration > start ? totalDuration : double.infinity;
      }
    }
    return (start: start, end: end);
  }

  /// Like [indexAt], but clamps each chapter's end to the next chapter's start
  /// before testing containment.
  ///
  /// Audiobookshelf libraries frequently store `end = start + overlap`, and
  /// some only store starts (end missing or 0). With the plain [indexAt] a
  /// position inside that overlap resolves to the previous chapter, and a
  /// chapter with no `end` never matches at all - which is why the chapter
  /// sheet could not find the row that was actually playing.
  static int? indexAtOverlapAware(
    List<dynamic> chapters,
    double positionSeconds,
    double totalDuration,
  ) {
    if (chapters.isEmpty) return null;
    for (int i = 0; i < chapters.length; i++) {
      final b = boundsAt(chapters, i, totalDuration);
      if (b == null) continue;
      if (positionSeconds >= b.start && positionSeconds < b.end) return i;
    }
    return null;
  }

  /// How far past the last chapter's end a position may sit while still  /// counting as the last chapter (covers rounding and trailing gaps).
  /// Positions grossly past that mean the chapters don't cover the item's
  /// timeline - e.g. duplicate audio files doubling the duration (GH #345) -
  /// and resolve to no chapter instead of pinning the last one.
  static const graceSeconds = 120.0;

  /// Like [indexAt], but keeps the last chapter for positions within
  /// [graceSeconds] past its end.
  static int? indexAtWithGrace(
    List<dynamic> chapters,
    double positionSeconds,
    double totalDuration,
  ) {
    final idx = indexAt(chapters, positionSeconds, totalDuration);
    if (idx != null) return idx;
    if (chapters.isEmpty) return null;
    final last = chapters.last as Map<String, dynamic>;
    final end = (last['end'] as num?)?.toDouble() ?? totalDuration;
    if (positionSeconds >= end && positionSeconds <= end + graceSeconds) {
      return chapters.length - 1;
    }
    return null;
  }

  static ({double seconds, bool finishesItem})? nextSkipTarget(
    List<dynamic> chapters,
    double positionSeconds,
    double totalDuration,
  ) {
    if (chapters.isEmpty) return null;
    for (final chapter in chapters) {
      final map = chapter as Map<String, dynamic>;
      final start = (map['start'] as num?)?.toDouble() ?? 0;
      if (start > positionSeconds + 1.0) {
        return (seconds: start, finishesItem: false);
      }
    }

    final lastChapter = chapters.last as Map<String, dynamic>;
    final lastEnd = (lastChapter['end'] as num?)?.toDouble() ?? 0;
    final end = totalDuration > 0 ? totalDuration : lastEnd;
    if (end <= 0) return null;
    return (seconds: end, finishesItem: true);
  }
}
