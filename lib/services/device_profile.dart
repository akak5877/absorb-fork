import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

/// Coarse capability flags used to dial back non-essential work on cheap
/// phones.
///
/// Everything here is an optimisation, never a feature switch: a "low RAM"
/// device loses no setting, it only gets fewer simultaneous cover downloads,
/// a smaller image cache and instant tab switches instead of a cross-fade.
///
/// The defaults are the full-fat ones, so a device we fail to identify keeps
/// the same behaviour as before.
class DeviceProfile {
  DeviceProfile._();

  /// Android's own low-RAM flag, or a total RAM below the 4 GB that budget
  /// phones ship with. Set once during startup; false until then.
  static bool lowRam = false;

  /// Total physical RAM in MB, 0 when unknown (iOS / detection failure).
  static int ramMb = 0;

  /// Image cache ceilings. Flutter's default is 100 MB / 1000 images, which on
  /// a 2-3 GB phone is a large slice of the heap and makes the GC evict covers
  /// the user is about to scroll back to.
  static const int _fullCacheBytes = 100 * 1024 * 1024;
  static const int _lowCacheBytes = 40 * 1024 * 1024;

  static Future<void> detect() async {
    if (!Platform.isAndroid) return;
    try {
      applyAndroidInfo(await DeviceInfoPlugin().androidInfo);
    } catch (error) {
      debugPrint('[DeviceProfile] detection failed: $error');
    }
  }

  /// Same as [detect], for callers that already hold the info (startup avoids
  /// a second platform round-trip this way).
  static void applyAndroidInfo(AndroidDeviceInfo info) {
    ramMb = info.physicalRamSize;
    lowRam = info.isLowRamDevice || (ramMb > 0 && ramMb < 4096);
    applyImageCacheLimits();
    debugPrint('[DeviceProfile] ram=${ramMb}MB lowRam=$lowRam');
  }

  /// Keeps decoded covers within a budget the device can actually hold.
  /// Applied after startup so the first frame is never delayed by it.
  static void applyImageCacheLimits() {
    final cache = PaintingBinding.instance.imageCache;
    final bytes = lowRam ? _lowCacheBytes : _fullCacheBytes;
    if (cache.maximumSizeBytes == bytes) return;
    cache.maximumSizeBytes = bytes;
    // Roughly 40 covers per MB at thumbnail size; keep the entry count in
    // step so a single huge cover cannot squat the whole budget.
    cache.maximumSize = lowRam ? 120 : 300;
  }
}
