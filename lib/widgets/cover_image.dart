import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../services/cover_cache.dart';

/// [ImageProvider] backed by [CoverCache].
///
/// Same contract as `CachedNetworkImageProvider`, but the bytes come from the
/// app's own persistent store, the cache key ignores the session token, and a
/// cover that is already on disk never touches the network.
class CoverImageProvider extends ImageProvider<CoverImageProvider> {
  CoverImageProvider(
    this.url, {
    this.headers = const <String, String>{},
    String? cacheKey,
  }) : cacheKey = cacheKey ?? CoverCache.keyForUrl(url);

  final String url;
  final Map<String, String> headers;
  final String cacheKey;

  @override
  Future<CoverImageProvider> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<CoverImageProvider>(this);
  }

  @override
  ImageStreamCompleter loadImage(
    CoverImageProvider key,
    ImageDecoderCallback decode,
  ) {
    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, decode),
      scale: 1.0,
      debugLabel: 'CoverImage("$cacheKey")',
    );
  }

  Future<ui.Codec> _loadAsync(
    CoverImageProvider key,
    ImageDecoderCallback decode,
  ) async {
    final Uint8List bytes = await CoverCache.instance.load(
      key.url,
      headers: key.headers,
      cacheKey: key.cacheKey,
    );
    final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);
    return decode(buffer);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CoverImageProvider && other.cacheKey == cacheKey;
  }

  @override
  int get hashCode => cacheKey.hashCode;

  @override
  String toString() => 'CoverImageProvider("$cacheKey")';
}

/// Drop-in replacement for a `CachedNetworkImage` that shows book art.
///
/// Decodes at [memCacheWidth] when given, so a dense grid does not keep several
/// megabytes of full-size bitmaps per tile in memory.
class CoverImage extends StatelessWidget {
  const CoverImage({
    super.key,
    required this.url,
    this.headers = const <String, String>{},
    this.fit = BoxFit.cover,
    this.memCacheWidth,
    this.cacheKey,
    this.placeholder,
    this.errorWidget,
    this.gaplessPlayback = true,
  });

  final String url;
  final Map<String, String> headers;
  final BoxFit fit;
  final int? memCacheWidth;

  /// Optional stable identity for the cached bytes. Widgets that already
  /// compute one (revision-aware) pass it here so the cache and the Flutter
  /// image cache agree on keying.
  final String? cacheKey;
  final Widget? placeholder;
  final Widget? errorWidget;
  final bool gaplessPlayback;

  @override
  Widget build(BuildContext context) {
    final base = CoverImageProvider(url, headers: headers, cacheKey: cacheKey);
    final ImageProvider provider =
        (memCacheWidth != null && memCacheWidth! > 0)
            ? ResizeImage(base, width: memCacheWidth)
            : base;

    final fallback = errorWidget ?? placeholder ?? const SizedBox.shrink();
    return Image(
      image: provider,
      fit: fit,
      gaplessPlayback: gaplessPlayback,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded || frame != null) return child;
        return placeholder ?? const SizedBox.shrink();
      },
      errorBuilder: (_, __, ___) => fallback,
    );
  }
}
