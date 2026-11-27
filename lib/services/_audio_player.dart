import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart' as ja;
import 'package:media_kit/media_kit.dart' as mk;

import 'native_ios_audio_player.dart';

// Re-export just_audio's data types so consumers don't need a second import.
export 'package:just_audio/just_audio.dart'
    show
        AudioSource,
        UriAudioSource,
        ConcatenatingAudioSource,
        ProgressiveAudioSource,
        PlayerState,
        PlaybackEvent,
        ProcessingState,
        AudioLoadConfiguration,
        AndroidLoadControl,
        DarwinLoadControl;

/// Platform-aware audio player.
/// Three backends, picked per item:
///  * iOS      – the native AVPlayer engine (`NativeIosAudioPlayer`)
///  * Android  – just_audio / ExoPlayer (default)
///  * Android  – libmpv via media_kit, used **only** for containers/codecs
///               ExoPlayer cannot parse (WMA v2 / ASF)
///
/// All three feed one set of broadcast controllers. That matters: the media
/// session handler subscribes to `playbackEventStream` / `processingStateStream`
/// exactly once, in its constructor, long before any book is opened. If the
/// getters returned a different stream after switching to mpv, the notification,
/// lock screen, Android Auto and progress saving would silently go dead.
class AudioPlayer {
  AudioPlayer({
    bool handleInterruptions = true,
    bool useProxyForRequestHeaders = true,
    ja.AudioLoadConfiguration? audioLoadConfiguration,
  }) {
    if (Platform.isIOS) {
      _native = NativeIosAudioPlayer();
      _pumpNative();
    } else {
      _ja = ja.AudioPlayer(
        handleInterruptions: handleInterruptions,
        useProxyForRequestHeaders: useProxyForRequestHeaders,
        audioLoadConfiguration: audioLoadConfiguration,
      );
      _pumpJustAudio();
    }
  }

  ja.AudioPlayer? _ja;
  NativeIosAudioPlayer? _native;

  bool get _isNative => _native != null;

  /// Expose the just_audio inner player for code paths that absolutely need
  /// it (rare). Null when running on the native engine or on mpv.
  ja.AudioPlayer? get jaPlayer => _ja;

  // ─── Single stream hub ───

  final _posCtrl = StreamController<Duration>.broadcast();
  final _durCtrl = StreamController<Duration?>.broadcast();
  final _bufCtrl = StreamController<Duration>.broadcast();
  final _stateCtrl = StreamController<ja.PlayerState>.broadcast();
  final _procCtrl = StreamController<ja.ProcessingState>.broadcast();
  final _eventCtrl = StreamController<ja.PlaybackEvent>.broadcast();
  final _idxCtrl = StreamController<int?>.broadcast();
  final List<StreamSubscription<dynamic>> _pumpSubs = [];

  void _pump<T>(Stream<T> stream, void Function(T) emit) {
    _pumpSubs.add(
      stream.listen(
        emit,
        onError: (Object e, StackTrace st) {
          debugPrint('[AudioPlayer] backend stream error: $e');
        },
      ),
    );
  }

  /// Forward just_audio's streams. Skipped while libmpv owns the session so a
  /// stale ExoPlayer tick cannot overwrite mpv's position.
  void _pumpJustAudio() {
    final p = _ja!;
    _pump(p.positionStream, (v) {
      if (usingMpv) return;
      if (!_posCtrl.isClosed) _posCtrl.add(v);
    });
    _pump(p.durationStream, (v) {
      if (usingMpv) return;
      if (!_durCtrl.isClosed) _durCtrl.add(v);
    });
    _pump(p.bufferedPositionStream, (v) {
      if (usingMpv) return;
      if (!_bufCtrl.isClosed) _bufCtrl.add(v);
    });
    _pump(p.playerStateStream, (v) {
      if (usingMpv) return;
      if (!_stateCtrl.isClosed) _stateCtrl.add(v);
    });
    _pump(p.processingStateStream, (v) {
      if (usingMpv) return;
      if (!_procCtrl.isClosed) _procCtrl.add(v);
    });
    _pump(p.playbackEventStream, (v) {
      if (usingMpv) return;
      if (!_eventCtrl.isClosed) _eventCtrl.add(v);
    });
    _pump(p.currentIndexStream, (v) {
      if (usingMpv) return;
      if (!_idxCtrl.isClosed) _idxCtrl.add(v);
    });
  }

  void _pumpNative() {
    final n = _native!;
    _pump(n.positionStream, (Duration v) {
      if (!_posCtrl.isClosed) _posCtrl.add(v);
    });
    _pump(n.durationStream, (Duration? v) {
      if (!_durCtrl.isClosed) _durCtrl.add(v);
    });
    _pump(n.bufferedPositionStream, (Duration v) {
      if (!_bufCtrl.isClosed) _bufCtrl.add(v);
    });
    _pump(n.playerStateStream, (ja.PlayerState v) {
      if (!_stateCtrl.isClosed) _stateCtrl.add(v);
    });
    _pump(n.processingStateStream, (ja.ProcessingState v) {
      if (!_procCtrl.isClosed) _procCtrl.add(v);
    });
    _pump(n.playbackEventStream, (ja.PlaybackEvent v) {
      if (!_eventCtrl.isClosed) _eventCtrl.add(v);
    });
    _pump(n.currentIndexStream, (int? v) {
      if (!_idxCtrl.isClosed) _idxCtrl.add(v);
    });
  }

  // ─── mpv backend (WMA and other ExoPlayer-hostile formats) ───

  mk.Player? _mpv;
  static bool _mkInitialized = false;

  /// libmpv is ~6 MB of native code that only WMA/ASF books ever touch, so the
  /// runtime is brought up on first use instead of in main(). Saves startup
  /// time and memory on every normal launch.
  static void _ensureMediaKit() {
    if (_mkInitialized) return;
    _mkInitialized = true;
    mk.MediaKit.ensureInitialized();
  }
  final List<StreamSubscription<dynamic>> _mpvSubs = [];
  final List<mk.Player> _mpvRetired = [];

  Duration _mpvRelPos = Duration.zero; // position inside the current file
  Duration _mpvTrackDur = Duration.zero;
  Duration? _mpvTotalDur; // whole book, when known
  bool _mpvPlaying = false;
  bool _mpvBuffering = true;
  bool _mpvCompleted = false;
  int _mpvIndex = 0;
  int _mpvTrackCount = 0;
  double _mpvRate = 1.0;
  double _mpvVol = 1.0;

  // libmpv reports `eof-reached` at the end of EVERY file in the playlist, not
  // just the last one. Without these three flags a chapter boundary looked
  // exactly like "the book finished": the service tore down the session and
  // media_kit's own play() then restarted the playlist from track 0, which is
  // why the next chapter never came.
  bool _mpvSwallowEof = false;
  Timer? _mpvAdvanceTimer;

  // Seek coalescing. media_kit serialises every command behind one lock, so a
  // dragged scrubber used to queue dozens of 5-second mpv seeks and the audio
  // only resumed after the last one answered.
  Duration? _mpvPendingSeek;
  Future<void>? _mpvSeekWorker;
  bool _mpvJumpPending = false;

  /// True while libmpv owns playback. Callers use it to skip just_audio-only
  /// bookkeeping (concat pre-buffer, next-book append, …).
  bool get usingMpv => _mpv != null;

  ja.ProcessingState get _mpvProcessingState {
    if (_mpvCompleted) return ja.ProcessingState.completed;
    if (_mpvBuffering) return ja.ProcessingState.buffering;
    if (_mpvTrackDur > Duration.zero || _mpvRelPos > Duration.zero) {
      return ja.ProcessingState.ready;
    }
    return ja.ProcessingState.loading;
  }

  Duration? get _mpvReportedDuration {
    if (_mpvTotalDur != null) return _mpvTotalDur;
    if (_mpvTrackCount <= 1) {
      return _mpvTrackDur > Duration.zero ? _mpvTrackDur : null;
    }
    return null;
  }

  ja.PlaybackEvent get _mpvEvent => ja.PlaybackEvent(
        processingState: _mpvProcessingState,
        updatePosition: _mpvRelPos,
        // libmpv has no separate buffer cursor; position is the best proxy and
        // keeps the scrubber from drawing a second, bogus bar.
        bufferedPosition: _mpvRelPos,
        duration: _mpvReportedDuration,
        currentIndex: _mpvTrackCount <= 1 ? null : _mpvIndex,
        updateTime: DateTime.now(),
      );

  ja.PlaybackEvent? _lastMpvEvent;

  void _mpvEmit() {
    if (!usingMpv) return;
    final event = _mpvEvent;
    _lastMpvEvent = event;
    if (_posCtrl.isClosed) return;
    _posCtrl.add(_mpvRelPos);
    _durCtrl.add(_mpvReportedDuration);
    _bufCtrl.add(_mpvRelPos);
    _procCtrl.add(_mpvProcessingState);
    _stateCtrl.add(ja.PlayerState(_mpvPlaying, _mpvProcessingState));
    _idxCtrl.add(_mpvTrackCount <= 1 ? null : _mpvIndex);
    _eventCtrl.add(event);
  }

  void _subscribeMpv(mk.Player p) {
    void listen<T>(Stream<T> stream, void Function(T) onData) {
      _mpvSubs.add(stream.listen(onData));
    }

    listen(p.stream.position, (Duration v) {
      _mpvRelPos = v;
      _mpvEmit();
    });
    listen(p.stream.duration, (Duration v) {
      if (v > Duration.zero) _mpvTrackDur = v;
      _mpvEmit();
    });
    listen(p.stream.playing, (bool v) {
      // EOF of a non-final file flips playing to false for a moment before mpv
      // moves on; reporting that as a pause would stop the queue advance.
      if (!v && _mpvSwallowEof) return;
      _mpvPlaying = v;
      if (v) _mpvCompleted = false;
      _mpvEmit();
    });
    listen(p.stream.buffering, (bool v) {
      _mpvBuffering = v;
      _mpvEmit();
    });
    listen(p.stream.completed, (bool v) {
      if (!v) return;
      // Chapter boundary, not the end of the book.
      if (_mpvTrackCount > 1 && _mpvIndex < _mpvTrackCount - 1) {
        _mpvSwallowEof = true;
        _mpvCompleted = false;
        _scheduleMpvTrackAdvance(_mpvIndex);
        return;
      }
      _mpvCompleted = true;
      _mpvPlaying = false;
      _mpvEmit();
    });
    listen(p.stream.playlist, (mk.Playlist v) {
      final idx = v.index;
      if (idx >= 0 && idx != _mpvIndex) {
        _mpvAdvanceTimer?.cancel();
        _mpvAdvanceTimer = null;
        _mpvSwallowEof = false;
        _mpvIndex = idx;
        _mpvRelPos = Duration.zero;
        _mpvTrackDur = Duration.zero;
        _mpvCompleted = false;
        _mpvEmit();
      }
    });
    listen(p.stream.error, (String v) {
      debugPrint('[Mpv] playback error: $v');
    });
  }

  /// mpv with `keep-open=yes` may sit at the end of a file instead of walking
  /// to the next playlist entry. If the index has not moved shortly after the
  /// EOF signal, advance it ourselves and resume - without this the player just
  /// stayed parked at the end of the chapter.
  void _scheduleMpvTrackAdvance(int fromIndex) {
    _mpvAdvanceTimer?.cancel();
    _mpvAdvanceTimer = Timer(const Duration(milliseconds: 800), () {
      _mpvAdvanceTimer = null;
      final p = _mpv;
      if (p == null) return;
      if (_mpvIndex != fromIndex) {
        // mpv advanced on its own.
        _mpvSwallowEof = false;
        return;
      }
      final next = fromIndex + 1;
      if (next >= _mpvTrackCount) return;
      _mpvIndex = next;
      _mpvRelPos = Duration.zero;
      _mpvTrackDur = Duration.zero;
      _mpvCompleted = false;
      _mpvSwallowEof = false;
      debugPrint('[Mpv] EOF at track $fromIndex - advancing to $next');
      unawaited(
        p
            .jump(next)
            .then((_) => p.play())
            .catchError((Object e) => debugPrint('[Mpv] advance failed: $e')),
      );
      _mpvEmit();
    });
  }

  /// Queue an mpv seek, collapsing everything the user drags past into the
  /// latest target. media_kit runs every command behind a single lock, so an
  /// un-coalesced drag queued one slow HTTP seek per pointer move.
  void _queueMpvSeek(Duration target) {
    _mpvPendingSeek = target;
    if (_mpvSeekWorker != null) return;
    _mpvSeekWorker = _runMpvSeeks();
  }

  Future<void> _runMpvSeeks() async {
    try {
      while (_mpvPendingSeek != null || _mpvJumpPending) {
        final p = _mpv;
        if (p == null) break;
        if (_mpvJumpPending) {
          _mpvJumpPending = false;
          try {
            await p.jump(_mpvIndex);
          } catch (e) {
            debugPrint('[Mpv] jump failed: $e');
          }
        }
        final target = _mpvPendingSeek;
        _mpvPendingSeek = null;
        if (target == null) continue;
        try {
          await p.seek(target);
        } catch (e) {
          debugPrint('[Mpv] seek failed: $e');
        }
      }
    } finally {
      _mpvSeekWorker = null;
    }
  }

  /// Flatten a source tree into the progressive URIs libmpv can open.
  List<ja.UriAudioSource> _flatten(ja.AudioSource source) {
    if (source is ja.ConcatenatingAudioSource) {
      return [for (final child in source.children) ..._flatten(child)];
    }
    if (source is ja.UriAudioSource) return [source];
    return const [];
  }

  bool _looksLikeWma(List<ja.UriAudioSource> tracks) {
    if (tracks.isEmpty) return false;
    return tracks.every((t) {
      final path = t.uri.path.toLowerCase();
      if (path.endsWith('.wma') || path.endsWith('.asf')) return true;
      final mime = (t.uri.queryParameters['mime'] ?? '').toLowerCase();
      return mime.contains('wma') || mime.contains('x-ms-wma');
    });
  }

  Future<Duration?> _openMpv(
    ja.AudioSource source, {
    Duration? initialPosition,
    int? initialIndex,
    Duration? totalDurationHint,
    bool? force,
  }) async {
    final tracks = _flatten(source);
    if (tracks.isEmpty) return null;
    if (force != true && !_looksLikeWma(tracks)) return null;

    await _closeMpv();

    _ensureMediaKit();
    final player = mk.Player();
    _mpv = player;
    _mpvTrackCount = tracks.length;
    _mpvTotalDur = totalDurationHint;
    _mpvIndex = (initialIndex ?? 0).clamp(0, tracks.length - 1);
    _mpvRelPos = initialPosition ?? Duration.zero;
    _mpvTrackDur = Duration.zero;
    _mpvCompleted = false;
    _mpvBuffering = true;
    _mpvPlaying = false;
    _mpvRate = 1.0;
    _mpvVol = 1.0;
    _lastMpvEvent = null;
    _mpvSwallowEof = false;
    _mpvAdvanceTimer?.cancel();
    _mpvAdvanceTimer = null;
    _mpvPendingSeek = null;
    _mpvJumpPending = false;

    _subscribeMpv(player);
    _mpvEmit();

    debugPrint(
      '[Mpv] opening ${tracks.length} track(s), startIndex=$_mpvIndex, '
      'startPos=${_mpvRelPos.inMilliseconds}ms, total=${_mpvTotalDur?.inSeconds}s',
    );

    // Reading further ahead makes a seek land faster on a remote file, and
    // `keep-open=no` lets mpv walk to the next chapter instead of parking at
    // the end of the current one.
    final platform = player.platform;
    if (platform is mk.NativePlayer) {
      for (final entry in const {
        'keep-open': 'no',
        'cache': 'yes',
        // media_kit defaults to writing the stream cache to disk; for audiobook
        // playback a RAM cache seeks faster and stops hammering the flash.
        'cache-on-disk': 'no',
        'cache-secs': '30',
        'demuxer-readahead-secs': '15',
        'demuxer-max-bytes': '33554432',
        'demuxer-max-back-bytes': '8388608',
      }.entries) {
        try {
          await platform.setProperty(entry.key, entry.value);
        } catch (e) {
          debugPrint('[Mpv] set ${entry.key} failed: $e');
        }
      }
    }

    try {
      await player.open(
        mk.Playlist([
          for (final t in tracks)
            mk.Media(t.uri.toString(), httpHeaders: t.headers),
        ], index: _mpvIndex),
        play: false,
      );
    } catch (e, st) {
      debugPrint('[Mpv] open failed: $e\n$st');
    }

    // Some containers take a moment to report duration; seek after `open` so
    // libmpv has a keyframe index to work with.
    if (_mpvRelPos > Duration.zero) {
      try {
        await player.seek(_mpvRelPos);
      } catch (e) {
        debugPrint('[Mpv] initial seek failed: $e');
      }
    }

    debugPrint(
      '[Mpv] opened dur=${player.state.duration.inMilliseconds}ms '
      'playing=${player.state.playing}',
    );
    _mpvEmit();

    return _mpvTotalDur ??
        (tracks.length == 1 && player.state.duration > Duration.zero
            ? player.state.duration
            : null);
  }

  Future<void> _closeMpv() async {
    _mpvAdvanceTimer?.cancel();
    _mpvAdvanceTimer = null;
    _mpvSwallowEof = false;
    _mpvPendingSeek = null;
    _mpvJumpPending = false;
    for (final sub in _mpvSubs) {
      await sub.cancel();
    }
    _mpvSubs.clear();
    final player = _mpv;
    _mpv = null;
    _mpvPlaying = false;
    _mpvBuffering = false;
    _mpvCompleted = false;
    _mpvTrackCount = 0;
    if (player == null) return;
    // Dispose is async and can block on the native side; retire the player in
    // the background so a source swap never stalls the UI.
    _mpvRetired.add(player);
    unawaited(player.dispose().catchError((Object e) {
      debugPrint('[Mpv] dispose failed: $e');
    }));
    if (_mpvRetired.length > 4) {
      _mpvRetired.removeAt(0);
    }
  }

  // ─── State getters ───

  Duration get position {
    if (usingMpv) return _mpvRelPos;
    return _isNative ? _native!.position : _ja!.position;
  }

  Duration? get duration {
    if (usingMpv) return _mpvReportedDuration;
    return _isNative ? _native!.duration : _ja!.duration;
  }

  Duration get bufferedPosition {
    if (usingMpv) return _mpvRelPos;
    return _isNative ? _native!.bufferedPosition : _ja!.bufferedPosition;
  }

  bool get playing {
    if (usingMpv) return _mpvPlaying;
    return _isNative ? _native!.playing : _ja!.playing;
  }

  ja.ProcessingState get processingState {
    if (usingMpv) return _mpvProcessingState;
    return _isNative ? _native!.processingState : _ja!.processingState;
  }

  double get speed {
    if (usingMpv) return _mpvRate;
    return _isNative ? _native!.speed : _ja!.speed;
  }

  double get volume {
    if (usingMpv) return _mpvVol;
    return _isNative ? _native!.volume : _ja!.volume;
  }

  int? get currentIndex {
    if (usingMpv) return _mpvTrackCount <= 1 ? null : _mpvIndex;
    return _isNative ? _native!.currentIndex : _ja!.currentIndex;
  }

  int? get androidAudioSessionId {
    if (usingMpv) return null;
    return _isNative ? null : _ja!.androidAudioSessionId;
  }

  ja.PlaybackEvent get playbackEvent {
    if (usingMpv) return _lastMpvEvent ?? _mpvEvent;
    return _isNative ? _native!.playbackEvent : _ja!.playbackEvent;
  }

  // ─── Streams (always the shared hub, never backend-specific) ───

  Stream<Duration> get positionStream => _posCtrl.stream;
  Stream<Duration?> get durationStream => _durCtrl.stream;
  Stream<Duration> get bufferedPositionStream => _bufCtrl.stream;
  Stream<ja.PlayerState> get playerStateStream => _stateCtrl.stream;
  Stream<ja.ProcessingState> get processingStateStream => _procCtrl.stream;
  Stream<ja.PlaybackEvent> get playbackEventStream => _eventCtrl.stream;
  Stream<int?> get currentIndexStream => _idxCtrl.stream;

  /// Native-only signal that the engine swapped to a pre-buffered next book
  /// mid-flight. Empty stream on Android - pre-buffer there still uses
  /// ConcatenatingAudioSource.add and is detected via position-jump.
  Stream<void> get bookAutoAdvancedStream =>
      _isNative ? _native!.bookAutoAdvancedStream : const Stream.empty();

  // ─── Source loading ───

  /// Loads [source]. When [preferMpv] is set (or every track is a `.wma` /
  /// `.asf` file) the libmpv backend takes over; otherwise just_audio handles
  /// it exactly as before.
  Future<Duration?> setAudioSource(ja.AudioSource source, {
    Duration? initialPosition,
    int? initialIndex,
    bool preload = true,
    String? itemId,
    bool preferMpv = false,
    Duration? totalDurationHint,
  }) async {
    if (_isNative) {
      return _native!.setAudioSource(source,
          initialPosition: initialPosition,
          initialIndex: initialIndex,
          preload: preload,
          itemId: itemId);
    }

    if (preferMpv || _looksLikeWma(_flatten(source))) {
      final opened = await _openMpv(
        source,
        initialPosition: initialPosition,
        initialIndex: initialIndex,
        totalDurationHint: totalDurationHint,
        force: preferMpv,
      );
      if (opened != null || usingMpv) return opened;
      // mpv refused (no playable URIs) - fall through to ExoPlayer.
    }

    if (usingMpv) await _closeMpv();
    // just_audio doesn't track an item id; it's only meaningful for the iOS
    // engine, which uses it to recognise a book on widget-driven resume.
    return _ja!.setAudioSource(
      source,
      initialPosition: initialPosition,
      initialIndex: initialIndex,
      preload: preload,
    );
  }

  /// Pre-buffer the next book so cross-book transitions are gapless.
  /// On iOS-native this swaps via replaceCurrentItem when current ends.
  /// On just_audio this is left as a no-op; caller still appends to its
  /// ConcatenatingAudioSource the old way. mpv has no equivalent.
  Future<bool> setNextSource(ja.AudioSource? source,
      {double startPositionS = 0,
      double totalDurationS = 0,
      String? itemId}) async {
    if (_isNative) {
      return _native!.setNextSource(source,
          startPositionS: startPositionS,
          totalDurationS: totalDurationS,
          itemId: itemId);
    }
    return false;
  }

  Future<void> attachEqualizerTap() async {
    if (_isNative) await _native!.attachEqualizerTap();
  }

  Future<void> detachEqualizerTap() async {
    if (_isNative) await _native!.detachEqualizerTap();
  }

  /// iOS-only: read the native engine's live state for foreground-resume
  /// reconciliation. Null off iOS or on failure.
  Future<NativeEngineState?> engineState() async =>
      _isNative ? _native!.engineState() : null;

  /// iOS-only: sync the Dart mirror to the engine's actual playing state
  /// without issuing a new play/pause command.
  void adoptPlayingState(bool playing) {
    if (_isNative) _native!.adoptPlayingState(playing);
  }

  // ─── Control ───

  Future<void> play() async {
    if (usingMpv) {
      await _mpv!.play();
      _mpvPlaying = true;
      _mpvCompleted = false;
      _mpvEmit();
      return;
    }
    await (_isNative ? _native!.play() : _ja!.play());
  }

  Future<void> pause() async {
    if (usingMpv) {
      await _mpv!.pause();
      _mpvPlaying = false;
      _mpvEmit();
      return;
    }
    await (_isNative ? _native!.pause() : _ja!.pause());
  }

  Future<void> stop() async {
    if (usingMpv) {
      await _mpv!.stop();
      _mpvPlaying = false;
      _mpvCompleted = false;
      _mpvEmit();
      return;
    }
    await (_isNative ? _native!.stop() : _ja!.stop());
  }

  Future<void> seek(Duration? position, {int? index}) async {
    if (usingMpv) {
      final target = position ?? Duration.zero;
      if (index != null && index != _mpvIndex) {
        _mpvIndex = index.clamp(0, _mpvTrackCount - 1);
        _mpvTrackDur = Duration.zero;
        _mpvJumpPending = true;
        _mpvAdvanceTimer?.cancel();
        _mpvAdvanceTimer = null;
        _mpvSwallowEof = false;
      }
      _mpvRelPos = target;
      _mpvCompleted = false;
      // Deliberately not awaited: the scrubber must snap and playback must
      // resume while mpv works through the queued seek. Order is preserved by
      // media_kit's command lock.
      _queueMpvSeek(target);
      _mpvEmit();
      return;
    }
    await (_isNative
        ? _native!.seek(position, index: index)
        : _ja!.seek(position, index: index));
  }

  Future<void> setSpeed(double speed) async {
    if (usingMpv) {
      _mpvRate = speed;
      await _mpv!.setRate(speed);
      _mpvEmit();
      return;
    }
    await (_isNative ? _native!.setSpeed(speed) : _ja!.setSpeed(speed));
  }

  Future<void> setVolume(double volume) async {
    if (usingMpv) {
      _mpvVol = volume;
      await _mpv!.setVolume(volume);
      return;
    }
    await (_isNative ? _native!.setVolume(volume) : _ja!.setVolume(volume));
  }

  Future<void> setSkipSilenceEnabled(bool enabled) async {
    if (usingMpv) return; // libmpv has no equivalent switch
    await (_isNative
        ? _native!.setSkipSilenceEnabled(enabled)
        : _ja!.setSkipSilenceEnabled(enabled));
  }

  Future<Duration?> setAsset(String asset) async {
    if (usingMpv) await _closeMpv();
    return _isNative ? _native!.setAsset(asset) : _ja!.setAsset(asset);
  }

  Future<void> dispose() async {
    await _closeMpv();
    if (_isNative) {
      await _native!.dispose();
    } else {
      await _ja!.dispose();
    }
    for (final sub in _pumpSubs) {
      await sub.cancel();
    }
    _pumpSubs.clear();
    for (final c in [
      _posCtrl,
      _durCtrl,
      _bufCtrl,
      _stateCtrl,
      _procCtrl,
      _eventCtrl,
      _idxCtrl,
    ]) {
      await c.close();
    }
  }

  // ─── just_audio-specific configuration (Android path) ───

  static Future<void> configureStreamingCache(int sizeInMB) async {
    // Forward to just_audio's static. Native iOS engine ignores this and
    // uses default AVPlayer caching; acceptable for the experimental flag.
    await ja.AudioPlayer.configureStreamingCache(sizeInMB);
  }

  static Future<void> clearStreamingCache() async {
    if (Platform.isIOS) return;
    await ja.AudioPlayer.clearStreamingCache();
  }
}
