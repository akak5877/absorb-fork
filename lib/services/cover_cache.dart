import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import 'api_service.dart';
import 'device_profile.dart';

/// Persistent on-disk cache for book / author cover art.
///
/// Why this exists: [CachedNetworkImage]'s default store lives in the OS
/// temporary directory and only keeps 200 files. A library of a few hundred
/// books blows past that on the first browse, so the next launch re-downloads
/// covers that were already fetched - and every tab switch waits on the
/// network again.
///
/// This cache instead:
///   * lives in the application support directory (survives restarts, is not
///     wiped when Android trims the app cache),
///   * keys files by the image URL *without* the session token, so a token
///     refresh does not orphan the whole cache,
///   * keeps one file per book per width, and
///   * can warm itself in the background for books the library knows about,
///     at a low concurrency, only fetching what is missing.
class CoverCache {
  CoverCache._();

  static final CoverCache instance = CoverCache._();

  /// Only the covers the UI actually asks for at this width are prefetched.
  static const int prefetchWidth = 400;
  static const int _maxPrefetchConcurrency = 2;
  static const Duration _requestTimeout = Duration(seconds: 20);
  static const int _maxBytes = 12 * 1024 * 1024;

  Directory? _dir;
  Future<void>? _ready;
  http.Client? _client;

  final Map<String, Future<Uint8List?>> _inflight = {};
  final Map<String, int> _versions = {};
  final Map<String, int?> _items = {};
  Timer? _indexSaveTimer;
  Timer? _prefetchTimer;
  bool _prefetchRunning = false;
  bool _prefetchRemaining = false;
  ApiService? Function()? _apiResolver;

  // ── setup ────────────────────────────────────────────────────────────

  Future<void> ready() => _ready ??= _open();

  Future<void> _open() async {
    try {
      final support = await getApplicationSupportDirectory();
      final dir = Directory('${support.path}/cover_cache');
      if (!dir.existsSync()) await dir.create(recursive: true);
      _dir = dir;
      _loadIndex();
      _client = http.Client();
    } catch (e) {
      debugPrint('[CoverCache] init failed: $e');
    }
  }

  /// Lets the cache resolve a live [ApiService] when it wants to warm covers
  /// in the background. Called once the shell is up.
  void bindApi(ApiService? Function() resolver) => _apiResolver = resolver;

  // ── keys ─────────────────────────────────────────────────────────────

  /// Canonical cache key for a cover URL.
  ///
  /// Drops the `token` query parameter (it rotates, and the account token is
  /// already sent as an `Authorization` header) and the `ts` cache-buster
  /// (handled separately, see [load]). Everything else - item id, width - stays
  /// so different renditions do not collide.
  static String keyForUrl(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return url;
    if (!uri.queryParameters.containsKey('token')) return url;
    final params = Map<String, String>.from(uri.queryParameters)..remove('token');
    return uri.replace(queryParameters: params.isEmpty ? null : params).toString();
  }

  static int? _versionOf(String url) {
    final uri = Uri.tryParse(url);
    final raw = uri?.queryParameters['ts'];
    return raw == null ? null : int.tryParse(raw);
  }

  File? _fileFor(String key) {
    final dir = _dir;
    if (dir == null) return null;
    return File('${dir.path}/${_hashFileName(key)}');
  }

  /// Stable 64-bit FNV-1a hash, so file names do not depend on `String.hashCode`
  /// staying the same between Dart versions.
  static String _hashFileName(String key) {
    var hash = 0xcbf29ce484222325;
    for (final byte in utf8.encode(key)) {
      hash ^= byte;
      hash = (hash * 0x100000001b3) & 0xFFFFFFFFFFFFFFFF;
    }
    return '${hash.toRadixString(16).padLeft(16, '0')}.img';
  }

  // ── reading ──────────────────────────────────────────────────────────

  /// True when [url] already has a file on disk. Cheap: one `stat`.
  bool isCached(String url) {
    final file = _fileFor(keyForUrl(url));
    return file != null && file.existsSync();
  }

  /// Bytes for [url], from disk when possible, otherwise downloaded once.
  ///
  /// Concurrent callers for the same key share a single request, which matters
  /// on the grid: the blurred backdrop and the cover itself ask at the same
  /// moment.
  Future<Uint8List> load(
    String url, {
    Map<String, String>? headers,
    String? cacheKey,
  }) async {
    await ready();
    final key = cacheKey ?? keyForUrl(url);
    final file = _fileFor(key);
    final version = _versionOf(url);
    final storedVersion = _versions[key];

    if (file != null && file.existsSync()) {
      // A URL carrying a newer `ts` than the stored one means the server art
      // changed; anything else is a hit.
      final stale = version != null &&
          storedVersion != null &&
          version > storedVersion;
      if (!stale) {
        try {
          final bytes = await file.readAsBytes();
          if (bytes.isNotEmpty) return bytes;
        } catch (_) {}
      }
    }

    final pending = _inflight[key];
    if (pending != null) {
      final shared = await pending;
      if (shared != null && shared.isNotEmpty) return shared;
      throw NetworkImageLoadException(
        statusCode: 0,
        uri: Uri.parse(url),
      );
    }

    final future = _download(key, url, headers, version);
    _inflight[key] = future;
    try {
      final bytes = await future;
      if (bytes == null || bytes.isEmpty) {
        throw NetworkImageLoadException(
          statusCode: 0,
          uri: Uri.parse(url),
        );
      }
      return bytes;
    } finally {
      if (identical(_inflight[key], future)) _inflight.remove(key);
    }
  }

  Future<Uint8List?> _download(
    String key,
    String url,
    Map<String, String>? headers,
    int? version,
  ) async {
    final client = _client;
    if (client == null) return null;
    try {
      final response = await client.get(
        Uri.parse(url),
        headers: <String, String>{
          if (headers != null) ...headers,
          'Accept': 'image/*',
        },
      ).timeout(_requestTimeout);
      if (response.statusCode != 200 || response.bodyBytes.isEmpty) {
        debugPrint('[CoverCache] ${response.statusCode} for $key');
        return null;
      }
      final bytes = response.bodyBytes;
      if (bytes.length > _maxBytes) return bytes; // serve, just do not keep it
      await _write(key, bytes, version);
      return bytes;
    } catch (e) {
      debugPrint('[CoverCache] fetch failed for $key: $e');
      return null;
    }
  }

  Future<void> _write(String key, Uint8List bytes, int? version) async {
    final file = _fileFor(key);
    if (file == null) return;
    try {
      final tmp = File('${file.path}.tmp');
      await tmp.writeAsBytes(bytes, flush: false);
      if (await file.exists()) await file.delete();
      await tmp.rename(file.path);
      if (version != null) {
        _versions[key] = version;
        _scheduleIndexSave();
      }
    } catch (e) {
      debugPrint('[CoverCache] write failed for $key: $e');
    }
  }

  /// Drops one cover (used when metadata replaces the art locally).
  Future<void> evict(String url) async {
    await ready();
    final file = _fileFor(keyForUrl(url));
    try {
      if (file != null && await file.exists()) await file.delete();
    } catch (_) {}
  }

  // ── background warming ───────────────────────────────────────────────

  /// Records books the library knows about. Their covers get warmed in the
  /// background, so the first visit to a shelf is not a wall of downloads.
  void rememberItem(String id, int? updatedAt) {
    if (id.isEmpty) return;
    final known = _items[id];
    if (known == updatedAt) return;
    _items[id] = updatedAt;
    _scheduleIndexSave();
    _schedulePrefetch();
  }

  /// Starts (or restarts) the background warm-up after the UI is up. Calling it
  /// again later is cheap: already-cached covers are skipped with one `stat`.
  void startPrefetch({Duration delay = const Duration(seconds: 4)}) {
    _prefetchTimer?.cancel();
    _prefetchTimer = Timer(delay, _pumpPrefetch);
  }

  void _schedulePrefetch() {
    if (_prefetchRunning) return;
    _prefetchTimer?.cancel();
    _prefetchTimer = Timer(const Duration(seconds: 6), _pumpPrefetch);
  }

  Future<void> _pumpPrefetch() async {
    if (_prefetchRunning) return;
    await ready();
    final api = _apiResolver?.call();
    if (api == null) return;
    final ids = Map<String, int?>.from(_items);
    if (ids.isEmpty) return;
    _prefetchRunning = true;
    try {
      final missing = <MapEntry<String, int?>>[];
      var scanned = 0;
      for (final entry in ids.entries) {
        final url = api.getCoverUrl(
          entry.key,
          width: prefetchWidth,
          updatedAt: entry.value,
        );
        if (!isCached(url)) missing.add(entry);
        // One `stat` each is cheap, but a thousand of them back to back on a
        // budget phone's storage is a visible freeze. Hand the event loop a
        // slice every so often so taps and scrolling stay responsive.
        if (++scanned % 40 == 0) {
          await Future<void>.delayed(Duration.zero);
        }
      }
      if (missing.isEmpty) return;
      // Warm a bounded slice per run instead of trying to fetch the entire
      // library in one go; the rest continues on the next launch (or when a
      // new item is remembered). On a low-RAM device keep both the slice and
      // the concurrency small.
      final perRunLimit = DeviceProfile.lowRam ? 60 : 240;
      final hadMore = missing.length > perRunLimit;
      _prefetchRemaining = hadMore;
      if (hadMore) {
        missing.removeRange(perRunLimit, missing.length);
      }
      debugPrint('[CoverCache] warming ${missing.length} covers');
      var index = 0;
      Future<void> worker() async {
        while (index < missing.length) {
          final entry = missing[index++];
          final url = api.getCoverUrl(
            entry.key,
            width: prefetchWidth,
            updatedAt: entry.value,
          );
          try {
            await load(url);
          } catch (_) {}
          // Same reasoning as the scan above: decoding the next image on the
          // engine thread is fine, but never let the loop monopolise a
          // microtask queue that the UI is waiting on.
          await Future<void>.delayed(Duration.zero);
        }
      }

      await Future.wait(
        List.generate(
          DeviceProfile.lowRam ? 1 : _maxPrefetchConcurrency,
          (_) => worker(),
        ),
      );
      debugPrint('[CoverCache] warm-up done');
    } finally {
      _prefetchRunning = false;
      // A capped run leaves the tail of a big library for later; come back
      // once the device has been idle for a while rather than hammering it
      // with hundreds of downloads in one burst.
      if (_prefetchRemaining) {
        _prefetchRemaining = false;
        _prefetchTimer?.cancel();
        _prefetchTimer = Timer(const Duration(seconds: 25), _pumpPrefetch);
      }
    }
  }

  // ── index persistence ────────────────────────────────────────────────

  void _loadIndex() {
    final dir = _dir;
    if (dir == null) return;
    try {
      final itemsFile = File('${dir.path}/items.json');
      if (itemsFile.existsSync()) {
        final decoded = jsonDecode(itemsFile.readAsStringSync());
        if (decoded is Map) {
          decoded.forEach((key, value) {
            if (key is String) _items[key] = value is num ? value.toInt() : null;
          });
        }
      }
      final versionsFile = File('${dir.path}/versions.json');
      if (versionsFile.existsSync()) {
        final decoded = jsonDecode(versionsFile.readAsStringSync());
        if (decoded is Map) {
          decoded.forEach((key, value) {
            if (key is String && value is num) _versions[key] = value.toInt();
          });
        }
      }
    } catch (e) {
      debugPrint('[CoverCache] index load failed: $e');
    }
  }

  void _scheduleIndexSave() {
    _indexSaveTimer?.cancel();
    _indexSaveTimer = Timer(const Duration(seconds: 3), _saveIndex);
  }

  void _saveIndex() {
    final dir = _dir;
    if (dir == null) return;
    try {
      File('${dir.path}/items.json').writeAsStringSync(jsonEncode(_items));
      File('${dir.path}/versions.json').writeAsStringSync(jsonEncode(_versions));
    } catch (e) {
      debugPrint('[CoverCache] index save failed: $e');
    }
  }
}
