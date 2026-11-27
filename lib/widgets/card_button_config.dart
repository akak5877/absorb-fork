import 'dart:io';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/chromecast_service.dart';
import '../services/wording.dart';

class CardButtonDef {
  final String id;
  final String label;
  final IconData icon;
  const CardButtonDef(this.id, this.label, this.icon);
}

/// Localized label for a card button id. Falls back to the English label
/// stored on the [CardButtonDef] if no mapping exists.
String localizedCardButtonLabel(AppLocalizations l, CardButtonDef def) {
  switch (def.id) {
    case 'chapters':
      return l.chapters;
    case 'speed':
      return l.speed;
    case 'sleep':
      return l.timer;
    case 'bookmarks':
      return l.bookmarks;
    case 'details':
      return l.bookDetailsLabel;
    case 'equalizer':
      return l.equalizerLabel;
    case 'cast':
      return l.castToDevice;
    case 'airplay':
      return 'AirPlay';
    case 'history':
      return l.playbackHistory;
    case 'remove':
      return classicWordingNotifier.value ? '从正在播放中移除' : l.removeFromAbsorbing;
    case 'car':
      return l.carModeTitle;
    case 'notes':
      return l.notes;
    case 'wake':
      return l.keepScreenOn;
    case 'download':
      return l.download;
    case 'ebook':
      return '阅读';
    case 'findinebook':
      return l.findInEbook;
    case 'lyrics':
      return l.lyricsMode;
  }
  return def.label;
}

/// Button IDs hidden in this build / on this platform.
/// - iOS: cast UI not supported through the plugin yet.
/// - F-Droid (GMS-free): Chromecast needs Google Play Services, so the stub
///   service reports castSupported=false and the button is dropped entirely.
final Set<String> _hiddenButtons = {
  if (Platform.isIOS) 'cast',
  if (!ChromecastService.castSupported) 'cast',
  // AirPlay is iOS-only (Chromecast covers Android).
  if (!Platform.isIOS) 'airplay',
};

const _allCardButtons = [
  CardButtonDef('chapters', '章节', Icons.list_rounded),
  CardButtonDef('speed', '速度', Icons.speed_rounded),
  CardButtonDef('sleep', '定时', Icons.nightlight_round_outlined),
  CardButtonDef('bookmarks', '书签', Icons.bookmark_outline_rounded),
  CardButtonDef('details', '书籍详情', Icons.info_outline_rounded),
  CardButtonDef('equalizer', '均衡器', Icons.equalizer_rounded),
  CardButtonDef('cast', '投屏到设备', Icons.cast_rounded),
  CardButtonDef('airplay', 'AirPlay', Icons.airplay_rounded),
  CardButtonDef('history', '播放历史', Icons.history_rounded),
  CardButtonDef('remove', '从吸收中移除', Icons.remove_circle_outline_rounded),
  CardButtonDef('car', '车载模式', Icons.directions_car_rounded),
  CardButtonDef('notes', '笔记', Icons.note_rounded),
  CardButtonDef('wake', '保持屏幕常亮', Icons.lightbulb_outline_rounded),
  CardButtonDef('download', '下载', Icons.download_outlined),
  CardButtonDef('ebook', '阅读', Icons.menu_book_rounded),
  CardButtonDef('findinebook', '在电子书中定位', Icons.manage_search_rounded),
  CardButtonDef('lyrics', '实时字幕', Icons.subtitles_rounded),
];

/// Card buttons filtered for the current platform.
final List<CardButtonDef> allCardButtons =
    _allCardButtons.where((b) => !_hiddenButtons.contains(b.id)).toList();

/// Look up a button definition by ID.
CardButtonDef? buttonDefById(String id) {
  for (final b in allCardButtons) {
    if (b.id == id) return b;
  }
  return null;
}
