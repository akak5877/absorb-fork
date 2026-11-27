// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'A B S O R B';

  @override
  String get online => '在线';

  @override
  String get offline => '离线';

  @override
  String get stillOffline => '仍处于离线状态。点击重试。';

  @override
  String get retry => '重试';

  @override
  String get listsNone => '暂无收藏或播放列表';

  @override
  String get listsNoneHint => '收藏和播放列表在 Audiobookshelf 服务器上创建，会显示在这里。';

  @override
  String get listsLoadFailed => '无法加载你的列表';

  @override
  String get listsLoadFailedHint => 'Absorb 无法连接到服务器获取收藏和播放列表。';

  @override
  String get listsNoneBookOrbit => '暂无收藏或智能范围';

  @override
  String get listsNoneHintBookOrbit => '收藏和智能范围在 BookOrbit 服务器上创建，会显示在这里。';

  @override
  String get listsLoadFailedHintBookOrbit => 'Absorb 无法连接到服务器获取收藏和智能范围。';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get remove => '移除';

  @override
  String get save => '保存';

  @override
  String get done => '完成';

  @override
  String get edit => '编辑';

  @override
  String get search => '搜索';

  @override
  String get apply => '应用';

  @override
  String get enable => '启用';

  @override
  String get clear => '清除';

  @override
  String get off => '关闭';

  @override
  String get disabled => '已禁用';

  @override
  String get later => '稍后';

  @override
  String get whatsNewTitle => 'Absorb 已更新';

  @override
  String whatsNewContent(String version) {
    return '当前版本为 $version。';
  }

  @override
  String get whatsNewButton => '查看更新内容';

  @override
  String get gotIt => '知道了';

  @override
  String get preview => '预览';

  @override
  String get or => '或';

  @override
  String get file => '文件';

  @override
  String get more => '更多';

  @override
  String get unknown => '未知';

  @override
  String get untitled => '无标题';

  @override
  String get noThanks => '不了，谢谢';

  @override
  String get stay => '保留';

  @override
  String get homeTitle => '首页';

  @override
  String get continueListening => '继续收听';

  @override
  String get continueReading => '继续收听';

  @override
  String get continueSeries => '继续收听系列';

  @override
  String get recentlyAdded => '最近添加';

  @override
  String get listenAgain => '重新收听';

  @override
  String get discover => '发现';

  @override
  String get newEpisodes => '最新单集';

  @override
  String get downloads => '下载';

  @override
  String get noDownloadedBooks => '暂无已下载书籍';

  @override
  String get yourLibraryIsEmpty => '您的媒体库空空如也';

  @override
  String get downloadBooksWhileOnline => '在线时下载书籍以离线收听';

  @override
  String get customizeHome => '自定义首页';

  @override
  String get dragToReorderTapEye => '拖动排序，点击眼睛图标显示/隐藏';

  @override
  String get loginTagline => '开始收听之旅';

  @override
  String get loginConnectToServer => '连接到您的服务器';

  @override
  String get loginServerAddress => '服务器地址';

  @override
  String get loginServerHint => 'my.server.com';

  @override
  String get loginServerHelper => '也支持 IP:端口 格式（例如 192.168.1.5:13378）';

  @override
  String get loginCouldNotReachServer => '无法连接到服务器';

  @override
  String get loginAdvanced => '高级';

  @override
  String get loginCustomHttpHeaders => '自定义 HTTP 请求头';

  @override
  String get loginCustomHeadersDescription =>
      '用于需要额外请求头的 Cloudflare 隧道或反向代理。请在输入服务器 URL 之前添加请求头。';

  @override
  String get loginHeaderName => '请求头名称';

  @override
  String get loginHeaderValue => '值';

  @override
  String get loginAddHeader => '添加请求头';

  @override
  String get loginSelfSignedCertificates => '自签名证书';

  @override
  String get loginTrustAllCertificates => '信任所有证书（用于自签名/自定义 CA 配置）';

  @override
  String get loginApiKey => 'API 密钥';

  @override
  String get loginApiKeyDescription =>
      '使用管理员生成的 API 密钥代替用户名/密码。当账号的令牌刷新失败时很有用。';

  @override
  String get loginWaitingForSso => '正在等待单点登录(SSO)...';

  @override
  String get loginRedirectUri => '重定向 URI: audiobookshelf://oauth';

  @override
  String get loginOrSignInManually => '或手动登录';

  @override
  String get loginUsername => '用户名';

  @override
  String get loginUsernameRequired => '请输入用户名';

  @override
  String get loginPassword => '密码';

  @override
  String get loginSignIn => '登录';

  @override
  String loginSignInAs(String username) {
    return '以 $username 登录？';
  }

  @override
  String get loginSignInToServer => '登录到此服务器？';

  @override
  String loginSignedInAs(String username) {
    return '已登录为 $username';
  }

  @override
  String get adminCreateSetupFile => '共享登录';

  @override
  String adminSetupFileDescription(String username) {
    return '为 $username 创建私密登录链接，只能用于 Absorb。';
  }

  @override
  String get adminSetupFileServerUrl => '新用户将使用的服务器地址';

  @override
  String get adminSetupFileNoteWithHeaders =>
      '将包含专属 API 密钥和你的自定义请求头，以便对方访问服务器。请像对待密码一样保管此链接。';

  @override
  String get adminSetupFileNote => '将包含专属 API 密钥。请像对待密码一样保管此链接。';

  @override
  String get adminSetupFileCreate => '创建链接';

  @override
  String get adminSetupFileSaveTitle => '保存配置文件';

  @override
  String get adminSetupFileKeyError => '无法为该用户创建 API 密钥';

  @override
  String adminSetupFileSaved(String username) {
    return '已保存 $username 的配置文件';
  }

  @override
  String adminSetupFileFailed(String error) {
    return '创建登录链接失败：$error';
  }

  @override
  String get setupLinkShareTitle => '分享登录链接';

  @override
  String setupLinkShareDescription(String username) {
    return '发送此私密链接，或让对方扫描二维码，以 $username 的身份登录。';
  }

  @override
  String setupLinkPrivateWarning(String username) {
    return '任何拿到此链接的人都能以 $username 的身份登录。请像对待密码一样保管。';
  }

  @override
  String get setupLinkShare => '分享链接';

  @override
  String get setupLinkCopy => '复制链接';

  @override
  String get setupLinkCopied => '已复制登录链接';

  @override
  String get setupLinkSaveFile => '保存配置文件';

  @override
  String get setupLinkQrError => '此登录链接过大，无法生成二维码，请改用链接分享。';

  @override
  String setupLinkShareSubject(String username) {
    return '$username 的 Absorb 登录';
  }

  @override
  String get setupLinkConfirmTitle => '使用此链接登录？';

  @override
  String setupLinkConfirmBody(String server, String username) {
    return '以 $username 的身份登录 $server？仅在确认发送者可信时继续。';
  }

  @override
  String get setupLinkInvalid => '此登录链接无效或不完整';

  @override
  String get setupLinkSigningIn => '正在校验登录链接…';

  @override
  String get loginPlayDownloads => '播放已下载内容';

  @override
  String signedOutDownloadsNote(String username) {
    return '已退出登录。此处收听的内容会在你以 $username 重新登录后同步。';
  }

  @override
  String get loginPasteLink => '粘贴登录链接';

  @override
  String get loginPasteLinkHelp => '粘贴收到的完整登录链接。请像对待密码一样保管。';

  @override
  String get loginFailed => '登录失败';

  @override
  String get loginSsoFailed => '单点登录失败或已取消';

  @override
  String get loginSsoAuthFailed => '单点登录认证失败，请重试。';

  @override
  String get loginRestoreFromBackup => '从备份恢复';

  @override
  String get loginInvalidBackupFile => '无效的备份文件';

  @override
  String get loginRestoreBackupTitle => '恢复备份？';

  @override
  String loginRestoreBackupWithAccounts(int count) {
    return '这将恢复所有设置和 $count 个已保存的账户。你将自动登录。';
  }

  @override
  String get loginRestoreBackupNoAccounts => '这将恢复所有设置。此备份中不包含任何账户。';

  @override
  String get loginRestore => '恢复';

  @override
  String loginRestoredAndSignedIn(String username) {
    return '已恢复设置并以 $username 身份登录';
  }

  @override
  String get loginSessionExpired => '设置已恢复。会话已过期 - 请登录以继续。';

  @override
  String get loginSettingsRestored => '设置已恢复';

  @override
  String loginRestoreFailed(String error) {
    return '恢复失败: $error';
  }

  @override
  String get loginSavedAccounts => '已保存账户';

  @override
  String get libraryTitle => '媒体库';

  @override
  String get librarySearchBooksHint => '搜索书籍、系列、作者、旁白...';

  @override
  String get librarySearchShowsHint => '搜索播客和单集...';

  @override
  String get libraryTabLibrary => '媒体库';

  @override
  String get libraryTabSeries => '系列';

  @override
  String get libraryTabAuthors => '作者';

  @override
  String get libraryTabNarrators => '旁白';

  @override
  String get libraryNoBooks => '未找到书籍';

  @override
  String get libraryNoUnfinishedBooks => '暂无未听完的书';

  @override
  String get libraryNoBooksInProgress => '暂无进行中的书籍';

  @override
  String get libraryNoFinishedBooks => '暂无已完成书籍';

  @override
  String get libraryAllBooksStarted => '所有书籍均已开始';

  @override
  String get libraryNoDownloadedBooks => '暂无已下载书籍';

  @override
  String get libraryNoSeriesFound => '未找到系列';

  @override
  String get libraryNoBooksWithEbooks => '暂无包含电子书的书籍';

  @override
  String get libraryNoBooksMissingMetadata => '没有书籍缺少此元数据';

  @override
  String get libraryNoItemsMatchingFilter => '没有符合此筛选条件的项目';

  @override
  String libraryNoBooksInGenre(String genre) {
    return '\"$genre\" 中没有找到书籍';
  }

  @override
  String libraryNoBooksWithTag(String tag) {
    return '没有标记为“$tag”的书籍';
  }

  @override
  String get libraryClearFilter => '清除筛选';

  @override
  String get libraryNoAuthorsFound => '未找到作者';

  @override
  String get libraryNoNarratorsFound => '未找到旁白';

  @override
  String get libraryNoResults => '未找到结果';

  @override
  String get librarySearchBooks => '书籍';

  @override
  String get librarySearchShows => '播客';

  @override
  String get librarySearchEpisodes => '单集';

  @override
  String get librarySearchSeries => '系列';

  @override
  String get librarySearchAuthors => '作者';

  @override
  String get librarySearchTags => '标签';

  @override
  String get librarySearchGenres => '类型';

  @override
  String librarySeriesCount(int count) {
    return '$count 个系列';
  }

  @override
  String libraryAuthorsCount(int count) {
    return '$count 位作者';
  }

  @override
  String libraryNarratorsCount(int count) {
    return '$count 位旁白';
  }

  @override
  String libraryBooksCount(int loaded, int total) {
    return '已加载 $loaded/$total 本书';
  }

  @override
  String get sort => '排序';

  @override
  String get filter => '筛选';

  @override
  String get filterActive => '筛选 ●';

  @override
  String get name => '名称';

  @override
  String get title => '标题';

  @override
  String get author => '作者';

  @override
  String get dateAdded => '添加日期';

  @override
  String get numberOfBooks => '书籍数量';

  @override
  String get sortTotalDuration => '总时长';

  @override
  String get sortLastBookAdded => '最近添加的书';

  @override
  String get sortLastBookUpdated => '最近更新的书';

  @override
  String get publishedYear => '出版年份';

  @override
  String get duration => '时长';

  @override
  String get random => '随机';

  @override
  String get collapseSeries => '折叠系列';

  @override
  String get notFinished => '未听完';

  @override
  String get inProgress => '正在收听';

  @override
  String get filterFinished => '已听完';

  @override
  String get notStarted => '未开始';

  @override
  String get downloaded => '已下载';

  @override
  String get hasEbook => '含电子书';

  @override
  String get noEbook => '无电子书';

  @override
  String get hasSupplementaryEbook => '含配套电子书';

  @override
  String get noSupplementaryEbook => '无配套电子书';

  @override
  String get noSeries => '无系列';

  @override
  String get publishedDecade => '出版年代';

  @override
  String get tracks => '音轨';

  @override
  String get noTracks => '无音轨';

  @override
  String get singleTrack => '单音轨';

  @override
  String get multipleTracks => '多音轨';

  @override
  String get abridged => '删节版';

  @override
  String get issues => '问题';

  @override
  String get rssFeedOpen => '打开 RSS 源';

  @override
  String get explicitContent => '露骨内容';

  @override
  String get missingMetadata => '缺失元数据';

  @override
  String get genre => '分类';

  @override
  String get tag => '标签';

  @override
  String get clearFilter => '清除筛选';

  @override
  String get noGenresFound => '未找到分类';

  @override
  String get noTagsFound => '未找到标签';

  @override
  String get asc => '升序';

  @override
  String get desc => '降序';

  @override
  String get fileSize => '文件大小';

  @override
  String get lastUpdated => '最近更新';

  @override
  String get fileCreated => '文件创建时间';

  @override
  String get lastModified => '最后修改';

  @override
  String get authorFirstLast => '作者（名 姓）';

  @override
  String get authorLastFirst => '作者（姓, 名）';

  @override
  String get progressSort => '进度';

  @override
  String get dateStarted => '开始日期';

  @override
  String get dateFinished => '完成日期';

  @override
  String get episodeCount => '集数';

  @override
  String get sequence => '系列序号';

  @override
  String get absorbingTitle => '正在收听';

  @override
  String get absorbingStop => '停止';

  @override
  String get absorbingManageQueue => '管理队列';

  @override
  String get absorbingDone => '完成';

  @override
  String get absorbingNoDownloadedEpisodes => '暂无已下载剧集';

  @override
  String get absorbingNoDownloadedBooks => '暂无已下载书籍';

  @override
  String get absorbingNothingPlayingYet => '暂无正在播放的内容';

  @override
  String get absorbingNothingAbsorbingYet => '暂无收听中的内容';

  @override
  String get absorbingDownloadEpisodesToListen => '下载单集以离线收听';

  @override
  String get absorbingDownloadBooksToListen => '下载书籍以离线收听';

  @override
  String get absorbingStartEpisodeFromShows => '从播客标签页开始播放剧集';

  @override
  String get absorbingStartBookFromLibrary => '从媒体库标签页开始播放书籍';

  @override
  String get carModeTitle => '车载模式';

  @override
  String get carModeNoBookLoaded => '未加载书籍';

  @override
  String get carModeBookLabel => '书籍';

  @override
  String get carModeChapterLabel => '章节';

  @override
  String get carModeBookmarkDefault => '书签';

  @override
  String get carModeBookmarkAdded => '已添加书签';

  @override
  String get downloadsTitle => '下载';

  @override
  String get downloadsCancelSelection => '取消选择';

  @override
  String get downloadsSelect => '选择';

  @override
  String get downloadsNoDownloads => '暂无下载';

  @override
  String get downloadsDownloading => '下载中';

  @override
  String get downloadsQueued => '排队中';

  @override
  String get downloadsCompleted => '已完成';

  @override
  String get downloadsEbooks => '电子书';

  @override
  String get downloadsWaiting => '等待中...';

  @override
  String get downloadsCancel => '取消';

  @override
  String get downloadsDelete => '删除';

  @override
  String downloadsDeleteCount(int count) {
    return '删除 $count 个下载项？';
  }

  @override
  String get downloadsDeleteContent => '已下载的文件将从本设备中移除。';

  @override
  String downloadsDeletedCount(int count) {
    return '已删除 $count 个下载项';
  }

  @override
  String get downloadsRemoveTitle => '移除下载？';

  @override
  String downloadsRemoveContent(String title) {
    return '从本设备中删除 \"$title\"？';
  }

  @override
  String downloadsRemovedTitle(String title) {
    return '\"$title\" 已移除';
  }

  @override
  String downloadFailedMissingFile(String title) {
    return '无法下载《$title》——其中一个文件不在服务器上。可尝试扫描书库修复。';
  }

  @override
  String downloadFailedNoSpace(String title) {
    return '无法下载《$title》——存储空间不足';
  }

  @override
  String downloadFailedPermission(String title) {
    return '无法下载《$title》——请检查设置中的下载位置';
  }

  @override
  String downloadFailedGeneric(String title) {
    return '无法下载《$title》';
  }

  @override
  String downloadsSelectedCount(int count) {
    return '已选择 $count 项';
  }

  @override
  String get bookmarksTitle => '全部书签';

  @override
  String get bookmarksTabBookmarks => '书签';

  @override
  String get bookmarksTabHighlights => '划线';

  @override
  String get highlightOpenInBook => '在书中打开';

  @override
  String get highlightDeleteAction => '删除划线';

  @override
  String get highlightDeleted => '已删除划线';

  @override
  String highlightsDeleteCount(int count) {
    return '删除 $count 条划线？';
  }

  @override
  String highlightsDeletedCount(int count) {
    return '已删除 $count 条划线';
  }

  @override
  String get quoteShareTitle => '分享摘录';

  @override
  String get quoteShareAction => '分享';

  @override
  String get quoteShareFailed => '无法生成摘录图片';

  @override
  String get quoteShapePortrait => '竖版';

  @override
  String get quoteShapeSquare => '方形';

  @override
  String get quoteShapeStory => '故事';

  @override
  String get quoteStyleBlur => '模糊';

  @override
  String get quoteStyleDim => '暗化';

  @override
  String get quoteStyleNone => '纯色封面';

  @override
  String get quoteTextLight => '浅色文字';

  @override
  String get quoteTextDark => '深色文字';

  @override
  String get quoteFieldTitle => '标题';

  @override
  String get quoteFieldDetail => '详情';

  @override
  String get quoteFieldDetailHint => '作者、章节、页码、出处';

  @override
  String highlightsMeta(String chapter, String date) {
    return '$chapter · $date';
  }

  @override
  String get bookmarksCancelSelection => '取消选择';

  @override
  String get bookmarksSortedByNewest => '按最新排序';

  @override
  String get bookmarksSortedByPosition => '按位置排序';

  @override
  String get bookmarksSelect => '选择';

  @override
  String get bookmarksNoBookmarks => '暂无书签';

  @override
  String get bookmarksSearchHint => '搜索书签';

  @override
  String get bookmarksNoMatches => '没有匹配的书签';

  @override
  String batchDownloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '正在下载 $count 本书',
      one: '正在下载 1 本书',
    );
    return '$_temp0';
  }

  @override
  String get batchDownloadNothingNew => '已下载';

  @override
  String bookmarksDeleteCount(int count) {
    return '删除 $count 个书签？';
  }

  @override
  String get bookmarksDeleteContent => '此操作无法撤销。';

  @override
  String bookmarksDeletedCount(int count) {
    return '已删除 $count 个书签';
  }

  @override
  String get bookmarksJumpTitle => '跳转到书签？';

  @override
  String bookmarksJumpContent(String title, String position, String bookTitle) {
    return '\"$title\" 位于 $position\n在《$bookTitle》中';
  }

  @override
  String get bookmarksJump => '跳转';

  @override
  String get bookmarksNotConnected => '未连接到服务器';

  @override
  String get bookmarksCouldNotLoad => '无法加载书籍';

  @override
  String bookmarksSelectedCount(int count) {
    return '已选择 $count 项';
  }

  @override
  String get statsTitle => '你的统计';

  @override
  String get statsCouldNotLoad => '无法加载统计数据';

  @override
  String get statsTotalListeningTime => '总收听时长';

  @override
  String get statsHoursUnit => '小时';

  @override
  String get statsMinutesUnit => '分钟';

  @override
  String get statsSecondsUnit => '秒';

  @override
  String statsDaysOfAudio(String days) {
    return '相当于 $days 天的音频';
  }

  @override
  String statsHoursOfAudio(String hours) {
    return '相当于 $hours 小时的音频';
  }

  @override
  String get statsToday => '今日';

  @override
  String get statsThisWeek => '本周';

  @override
  String get statsThisMonth => '本月';

  @override
  String get statsActivity => '活动';

  @override
  String get statsCurrentStreak => '当前连续天数';

  @override
  String get statsBestStreak => '最佳连续天数';

  @override
  String get statsFinished => '已完成';

  @override
  String get statsBooksFinished => '书籍';

  @override
  String get statsEpisodesFinished => '单集';

  @override
  String get statsBooksThisYear => '今年书籍';

  @override
  String get statsEpisodesThisYear => '今年单集';

  @override
  String get statsRemoveFromYearTitle => '从今年移除';

  @override
  String statsRemoveFromYearWithDate(String date, String title) {
    return '服务器上的完成日期仍为 $date。此操作只是把《$title》从 Absorb 的“今年听过的书”列表中移除。';
  }

  @override
  String statsRemoveFromYearNoDate(String title) {
    return '完成日期仍保留在服务器上。此操作只是把《$title》从 Absorb 的“今年听过的书”列表中移除。';
  }

  @override
  String get statsRemovedFromYear => '已从今年移除';

  @override
  String get statsAddBackToYearTitle => '重新加入今年';

  @override
  String statsAddBackToYearBody(String title) {
    return '将《$title》重新加入 Absorb 的“今年听过的书”列表？';
  }

  @override
  String get statsAddBack => '重新加入';

  @override
  String get statsAddedBackToYear => '已重新加入今年';

  @override
  String get statsHiddenFromYear => '已从今年隐藏';

  @override
  String get statsNothingHidden => '没有隐藏项';

  @override
  String get settingsCustomizeStats => '自定义统计';

  @override
  String get statsGoalTitle => '收听目标';

  @override
  String get statsGoalOff => '关闭';

  @override
  String get statsGoalDaily => '每天';

  @override
  String get statsGoalWeekly => '每周';

  @override
  String get statsGoalMonthly => '每月';

  @override
  String get statsGoalTarget => '目标';

  @override
  String get statsGoalEnterTitle => '设置目标';

  @override
  String get statsGoalEnterTimeHint => '分钟或 h:mm';

  @override
  String statsBooksShort(int count) {
    return '$count 本书';
  }

  @override
  String get statsBookChallengeTitle => '收听挑战';

  @override
  String get statsBookChallengeDesc => '今年要听完的书';

  @override
  String get statsDailyGoal => '每日目标';

  @override
  String get statsWeeklyGoal => '每周目标';

  @override
  String get statsMonthlyGoal => '每月目标';

  @override
  String statsGoalProgress(String done, String target) {
    return '$done / $target';
  }

  @override
  String statsBookChallengeProgress(int done, int target) {
    return '$target 本中已完成 $done 本';
  }

  @override
  String get statsGoalReached => '已达目标';

  @override
  String get statsChartTitle => '收听图表';

  @override
  String get statsChartBar => '柱状';

  @override
  String get statsChartLine => '折线';

  @override
  String get statsChartHeatmap => '热力图';

  @override
  String get statsChartDays7 => '7 天';

  @override
  String get statsChartDays30 => '30天';

  @override
  String get statsLast30Days => '过去 30 天';

  @override
  String get statsThisYearTitle => '今年';

  @override
  String get statsSectionsTitle => '板块';

  @override
  String get statsSectionTimePeriods => '时间段';

  @override
  String get statsHeatmapLess => '更少';

  @override
  String get statsHeatmapMore => '更多';

  @override
  String get statsDayOfWeek => '每周日均';

  @override
  String get statsTimeSavedLabel => '加速节省的时间';

  @override
  String statsTimeSavedSince(String date) {
    return '自 $date 起';
  }

  @override
  String get statsTimeSavedReset => '重置节省时间';

  @override
  String get statsTimeSavedResetConfirm => '节省时间将从今天重新开始累计。';

  @override
  String get statsTimeSavedResetDone => '节省时间已重置';

  @override
  String statsOnPaceFor(int count) {
    return '预计可听完 $count 本';
  }

  @override
  String get statsDaysActive => '活跃天数';

  @override
  String get statsDailyAverage => '日均时长';

  @override
  String get statsLast7Days => '过去7天';

  @override
  String get statsMostListened => '收听最多';

  @override
  String get statsRecentSessions => '最近会话';

  @override
  String get appShellHomeTab => '首页';

  @override
  String get appShellLibraryTab => '媒体库';

  @override
  String get appShellAbsorbingTab => '正在收听';

  @override
  String get appShellStatsTab => '统计';

  @override
  String get appShellSettingsTab => '设置';

  @override
  String get appShellDiscoverTab => '发现';

  @override
  String get appShellShowsTab => '节目';

  @override
  String get appShellPodcastsTab => '播客';

  @override
  String get libraryTabEpisodes => '单集';

  @override
  String get filterAllEpisodes => '全部';

  @override
  String get filterUnplayed => '未播放';

  @override
  String get episodeFeedEmpty => '没有符合此筛选条件的单集';

  @override
  String get podcastFilterUpNext => '接下来';

  @override
  String get podcastFilterNew => '新增';

  @override
  String get settingsPodcastTab => '播客标签页';

  @override
  String get settingsPodcastTabDesc => '在底部导航栏为某个播客书库单独设置标签页';

  @override
  String get settingsPodcastTabLibrary => '播客标签页书库';

  @override
  String get settingsMergeImpliedByPodcastTab => '启用播客标签页时始终开启';

  @override
  String get settingsEpisodeNotifs => '通知设置';

  @override
  String get settingsEpisodeNotifsDesc => '新播客单集和即将发布的新书，在后台检查';

  @override
  String get notifIntervalOff => '关闭';

  @override
  String notifIntervalMinutes(int n) {
    return '每 $n 分钟';
  }

  @override
  String get notifIntervalHour => '每小时';

  @override
  String notifIntervalHours(int n) {
    return '每 $n 小时';
  }

  @override
  String get settingsBatteryUnrestricted => '允许不受限制地使用电池';

  @override
  String get settingsBatteryUnrestrictedDesc => '防止部分手机的系统暂停后台检查';

  @override
  String get appShellPressBackToExit => '再按一次返回键退出';

  @override
  String get settingsTitle => '设置';

  @override
  String get sectionAppearance => '外观';

  @override
  String get languageLabel => '语言';

  @override
  String get languageSystemDefault => '跟随系统';

  @override
  String get languageHelpTranslateInvite => '想帮 Absorb 翻译成你的语言吗？';

  @override
  String get themeLabel => '主题';

  @override
  String get themeDark => '深色';

  @override
  String get themeOled => 'OLED';

  @override
  String get themeLight => '浅色';

  @override
  String get themeAuto => '自动';

  @override
  String get colorSourceLabel => '颜色来源';

  @override
  String get colorSourceCoverDescription => '应用颜色跟随当前播放书籍的封面';

  @override
  String get colorSourceWallpaperDescription => '应用颜色跟随系统壁纸';

  @override
  String get colorSourceWallpaper => '壁纸';

  @override
  String get colorSourceNowPlaying => '正在播放';

  @override
  String get colorSourceDynamic => '动态';

  @override
  String get colorSourceManual => '手动';

  @override
  String get colorSourceManualDescription => '使用你在下方选择的固定应用颜色';

  @override
  String get colorSourceCustom => '自定义';

  @override
  String get useColorEverywhereLabel => '在所有界面使用此颜色';

  @override
  String get useColorEverywhereSubtitle => '书籍详情页和播放卡片也使用设定的颜色，而不是每本书的封面';

  @override
  String get flatBackgroundLabel => '纯色背景';

  @override
  String get flatBackgroundSubtitle => '移除背景渐变。深色模式下为纯黑，适合 OLED 屏幕。';

  @override
  String get einkModeLabel => '墨水屏模式';

  @override
  String get einkModeSubtitle => '高对比黑白、无动画，专为墨水屏设计';

  @override
  String get einkModeIntroBody =>
      '专为墨水屏设计。应用会切换为高对比黑白界面，关闭动画，播放卡片去掉背景，并关闭实时服务器连接以省电。播放与进度仍会正常同步。关闭后恢复你原有的外观设置。';

  @override
  String get einkModeIntroConfirm => '开启';

  @override
  String get backgroundIntensityLabel => '背景强度';

  @override
  String get startScreenLabel => '启动画面';

  @override
  String get startScreenSubtitle => '应用启动时打开的标签页';

  @override
  String get startScreenHome => '首页';

  @override
  String get startScreenLibrary => '媒体库';

  @override
  String get startScreenAbsorb => '正在收听';

  @override
  String get startScreenStats => '统计';

  @override
  String get disablePageFade => '禁用页面淡入淡出';

  @override
  String get disablePageFadeOnSubtitle => '页面立即切换';

  @override
  String get disablePageFadeOffSubtitle => '切换标签页时页面淡入淡出';

  @override
  String get rectangleBookCovers => '矩形书籍封面';

  @override
  String get progressTextSize => '进度文字大小';

  @override
  String get rectangleBookCoversOnSubtitle => '封面以 2:3 的书籍比例显示';

  @override
  String get rectangleBookCoversOffSubtitle => '封面为正方形';

  @override
  String get coverSize => '封面大小';

  @override
  String get coverSizeSubtitle => '书库网格每行显示多少个封面';

  @override
  String get coverSizeSmall => '小';

  @override
  String get coverSizeMedium => '中';

  @override
  String get coverSizeLarge => '大';

  @override
  String get sectionAbsorbingCards => '收听卡片';

  @override
  String get fullScreenPlayer => '全屏播放器';

  @override
  String get fullScreenPlayerOnSubtitle => '开启 - 播放时以全屏方式打开书籍';

  @override
  String get fullScreenPlayerOffSubtitle => '关闭 - 在卡片视图内播放';

  @override
  String get fullBookScrubber => '全书进度条';

  @override
  String get fullBookScrubberOnSubtitle => '开启 - 可拖动滑块跳转至全书任意位置';

  @override
  String get fullBookScrubberOffSubtitle => '关闭 - 仅显示进度条';

  @override
  String get cardScrubbers => '卡片进度条';

  @override
  String get cardScrubbersBoth => '两者';

  @override
  String get cardScrubbersChapter => '章节';

  @override
  String get cardScrubbersLocked => '已锁定';

  @override
  String get cardScrubbersBothSubtitle => '整书进度条和章节进度条均可拖动';

  @override
  String get cardScrubbersChapterSubtitle => '仅章节进度条可拖动';

  @override
  String get cardScrubbersLockedSubtitle => '仅显示进度，不可拖动';

  @override
  String get speedAdjustedTime => '变速后时间';

  @override
  String get speedAdjustedTimeOnSubtitle => '开启 - 剩余时间会根据播放速度变化';

  @override
  String get speedAdjustedTimeOffSubtitle => '关闭 - 显示原始音频时长';

  @override
  String get buttonLayout => '按钮布局';

  @override
  String get buttonLayoutSubtitle => '卡片上操作按钮的排列方式';

  @override
  String get whenAbsorbed => '当收听完成时';

  @override
  String get whenAbsorbedInfoTitle => '当收听完成时';

  @override
  String get whenAbsorbedInfoContent =>
      '控制当您完成一本书或一集后收听卡片的行为。\n\n已完成的卡片会自动从从您的“正在收听”屏幕中移除。';

  @override
  String get whenAbsorbedSubtitle => '听完一本书或或一集后收听卡片的处理方式';

  @override
  String get whenAbsorbedShowOverlay => '显示覆盖层';

  @override
  String get whenAbsorbedAutoRelease => '自动释放';

  @override
  String get mergeLibraries => '合并媒体库';

  @override
  String get mergeLibrariesInfoTitle => '合并媒体库';

  @override
  String get mergeLibrariesInfoContent =>
      '启用后，“正在收听”界面会将您所有媒体库中正在进行的书籍和播客集中显示在一个视图中。禁用时，仅显示您当前所选媒体库中的项目。';

  @override
  String get mergeLibrariesOnSubtitle => '正在收听页面显示来自所有媒体库的项目';

  @override
  String get mergeLibrariesOffSubtitle => '正在收听页面仅显示当前媒体库';

  @override
  String get queueMode => '队列模式';

  @override
  String get queueModeInfoTitle => '队列模式';

  @override
  String get queueModeInfoOff => '关闭';

  @override
  String get queueModeInfoOffDesc => '当前书籍或单集播放完成后停止播放。';

  @override
  String get queueModeInfoManual => '手动队列';

  @override
  String get queueModeInfoManualDesc =>
      '你的收听卡片将作为播放列表使用。当一个播放完成时，会自动播放下一个未完成的卡片。通过书籍或单集详情页的\"添加至正在收听\"按钮添加项目，并在收听界面重新排序。';

  @override
  String get queueModeOff => '关闭';

  @override
  String get queueModeManual => '手动';

  @override
  String get queueModeAuto => '自动';

  @override
  String get queueModePlaylist => '播放列表';

  @override
  String get queueModeCollection => '收藏';

  @override
  String get queueModeInfoPlaylist => '播放队列';

  @override
  String get queueModeInfoPlaylistDesc => '按所选播放列表的顺序播放，跳过已完成的项目，并在列表结束时停止。';

  @override
  String get queuePlaylistPickerTitle => '选择一个播放列表';

  @override
  String get queuePlaylistNone => '没有选择播放列表';

  @override
  String queuePlaylistActiveLabel(String name) {
    return '播放列表：$name';
  }

  @override
  String get queueModePlaylistHint => '在首页打开播放列表即可开始队列播放。';

  @override
  String get exit => '退出';

  @override
  String upNext(String label) {
    return '接下来：$label';
  }

  @override
  String get nothingUpNext => '队列为空';

  @override
  String get showUpNextLabel => '在播放页显示“接下来”';

  @override
  String get openSeries => '打开系列';

  @override
  String get openPlaylist => '打开播放列表';

  @override
  String get openCollection => '打开收藏';

  @override
  String get playlistPlayAction => '播放列表';

  @override
  String get playlistAllFinished => '全部听完';

  @override
  String get queueModeBooks => '书籍';

  @override
  String get queueModePodcasts => '播客';

  @override
  String get autoDownloadQueue => '自动下载队列';

  @override
  String get autoDownloadThisSeriesLabel => '自动下载此系列';

  @override
  String get autoDownloadThisShowLabel => '自动下载此播客';

  @override
  String get autoDownloadThisPlaylistLabel => '自动下载此播放列表';

  @override
  String get autoDownloadThisCollectionLabel => '自动下载此收藏';

  @override
  String autoDownloadQueueOnSubtitle(int count) {
    return '保留接下来 $count 个项目的下载';
  }

  @override
  String get autoDownloadQueueOffSubtitle => '关闭 - 仅手动下载';

  @override
  String get sectionPlayback => '播放';

  @override
  String get sectionMediaControls => '媒体控制';

  @override
  String get defaultSpeed => '默认速度';

  @override
  String get defaultSpeedSubtitle => '新书以此速度开始播放 - 每本书会记住自己的速度';

  @override
  String get skipBack => '快退';

  @override
  String get skipForward => '快进';

  @override
  String get iosLockScreenSkipHint =>
      '锁屏只显示 iOS 有图标的数值（5、10、15、30、45、60、75、90）。其他数值按钮上显示 +，但仍按你的设置跳转。';

  @override
  String get longSkipButtons => '长距跳过按钮';

  @override
  String get longSkipButtonsOnSubtitle => '开启——播放器会多显示一组更大的跳过按钮';

  @override
  String get longSkipButtonsOffSubtitle => '关闭——仅显示常规跳过按钮';

  @override
  String get longSkipBack => '长距后退';

  @override
  String get longSkipForward => '长距快进';

  @override
  String get coverShapeDefault => '默认';

  @override
  String get coverShapeSquare => '方形';

  @override
  String get coverShapeRectangle => '矩形';

  @override
  String get coverShapeLabel => '封面形状';

  @override
  String get showSubtitles => '显示副标题';

  @override
  String get showSubtitlesOnSubtitle => '在书库和首页的书名下方显示副标题';

  @override
  String get showSubtitlesOffSubtitle => '关闭——仅在书籍详情页显示副标题';

  @override
  String get subtitleVisibilityLabel => '副标题';

  @override
  String get subtitleVisibilityDefault => '默认';

  @override
  String get subtitleVisibilityShow => '显示';

  @override
  String get subtitleVisibilityHide => '隐藏';

  @override
  String currentLibrarySettingsTitle(String name) {
    return '当前书库：$name';
  }

  @override
  String get currentLibrarySkipOverride => '自定义跳过秒数';

  @override
  String get currentLibrarySkipOverrideOnSubtitle => '开启——此书库使用独立的跳过秒数';

  @override
  String get currentLibrarySkipOverrideOffSubtitle => '关闭——此书库使用全局跳过秒数';

  @override
  String get currentLibrarySkipBack => '后退';

  @override
  String get currentLibrarySkipForward => '快进';

  @override
  String get chapterProgressInNotification => '通知中显示章节进度';

  @override
  String get chapterProgressOnSubtitle => '开启 - 锁屏显示章节进度';

  @override
  String get chapterProgressOffSubtitle => '关闭 - 锁屏显示全书进度';

  @override
  String get chapterProgressInNotificationIos => '锁屏与 CarPlay 显示章节进度';

  @override
  String get chapterProgressOnSubtitleIos => '开启——锁屏与 CarPlay 显示章节进度';

  @override
  String get nowPlayingText => '正在播放文字';

  @override
  String get nowPlayingTextSubtitle => '选择媒体控制每行显示的内容';

  @override
  String get nowPlayingTopLine => '第一行';

  @override
  String get nowPlayingSecondLine => '第二行';

  @override
  String get nowPlayingNotShown => '不显示';

  @override
  String get nowPlayingTopLineRequired => '第一行至少需要一项内容';

  @override
  String get nowPlayingPieceChapter => '章节';

  @override
  String get nowPlayingPieceTitle => '书名';

  @override
  String get nowPlayingPieceNarrator => '演播者';

  @override
  String get nowPlayingPieceSeries => '系列';

  @override
  String get nowPlayingPiecePercent => '全书进度';

  @override
  String get nowPlayingPieceChapterNumber => '章节序号';

  @override
  String get nowPlayingPieceTimeLeft => '剩余时间';

  @override
  String nowPlayingChapterNumber(int number, int total) {
    return '第 $number/$total 章';
  }

  @override
  String nowPlayingTimeLeft(String time) {
    return '剩余 $time';
  }

  @override
  String get bookDockBadgePending => '待处理';

  @override
  String get bookDockBadgeExtracting => '正在读取文件';

  @override
  String get bookDockBadgeFetching => '正在查询';

  @override
  String get bookDockBadgeError => '错误';

  @override
  String get bookDockNeedsReview => '需要确认';

  @override
  String get bookDockNoMatch => '无匹配';

  @override
  String get bookDockApplied => '已应用';

  @override
  String get bookDockNotApplied => '已找到但未采用的详情';

  @override
  String get bookDockNoDestination => '未设置目标';

  @override
  String get bookDockNoAuthor => '暂无作者';

  @override
  String get bookDockLookUpAgain => '重新查询';

  @override
  String get bookDockLookingUp => '正在重新查询详情';

  @override
  String get bookDockLookUpFailed => '无法查询详情';

  @override
  String get bookDockProposedChanges => '建议的更改';

  @override
  String get bookDockNoChanges => '尚未在网上找到详情';

  @override
  String get bookDockStillReading => '服务器仍在读取此文件';

  @override
  String get bookDockRoleBook => '书籍';

  @override
  String get bookDockRoleCover => '封面';

  @override
  String get bookDockRoleMetadata => '元数据';

  @override
  String get bookDockRoleExtra => '附加';

  @override
  String get bookDockFieldTitle => '标题';

  @override
  String get bookDockFieldSubtitle => '副标题';

  @override
  String get bookDockFieldAuthors => '作者';

  @override
  String get bookDockFieldSeries => '系列';

  @override
  String get bookDockFieldPublisher => '出版社';

  @override
  String get bookDockFieldYear => '年份';

  @override
  String get bookDockFieldLanguage => '语言';

  @override
  String get bookDockFieldIsbn => 'ISBN';

  @override
  String bookDockMatch(int percent) {
    return '匹配度 $percent%';
  }

  @override
  String bookDockFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
      one: '1 个文件',
    );
    return '$_temp0';
  }

  @override
  String bookDockGoesTo(String library) {
    return '归入 $library';
  }

  @override
  String bookDockChangedFields(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个字段',
      one: '1 个字段',
    );
    return '$_temp0';
  }

  @override
  String bookDockFilesInEntry(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '此条目中的 $count 个文件',
      one: '此条目中的文件',
    );
    return '$_temp0';
  }

  @override
  String bookDockAdded(String date) {
    return '添加于 $date';
  }

  @override
  String get bookDockAddToLibrary => '添加到书库';

  @override
  String get bookDockUseFound => '使用找到的详情';

  @override
  String get bookDockRemoveTitle => '从 Book Dock 移除？';

  @override
  String get bookDockRemoveFailed => '无法移除此文件';

  @override
  String get bookDockPickLibrary => '添加到哪个书库？';

  @override
  String get bookDockNoLibraries => '你的账户无权向书库添加书籍';

  @override
  String get bookDockFileFailed => '无法将此文件添加到书库';

  @override
  String get bookDockDuplicateBody => '该书库中已存在同名文件。要从 Book Dock 移除吗？';

  @override
  String get bookDockDetailsUpdated => '详情已更新';

  @override
  String get bookDockUseFoundFailed => '没有可用的详情';

  @override
  String bookDockRemoveBody(String title) {
    return '这将从服务器删除 $title。';
  }

  @override
  String bookDockRemoved(String title) {
    return '已将 $title 从 Book Dock 移除';
  }

  @override
  String bookDockFiled(String title, String library) {
    return '已将 $title 添加到 $library';
  }

  @override
  String bookDockFileFailedReason(String reason) {
    return '无法添加此文件：$reason';
  }

  @override
  String bookDockDuplicateTitle(String library) {
    return '已在 $library 中';
  }

  @override
  String get bomatchSearchAll => '搜索所有来源';

  @override
  String get bomatchSearching => '正在搜索…';

  @override
  String get bomatchSearchFailed => '无法搜索匹配项。请检查网络后重试。';

  @override
  String get bomatchNoResults => '未找到匹配';

  @override
  String get bomatchStrong => '高度匹配';

  @override
  String get bomatchPossible => '可能匹配';

  @override
  String get bomatchSourceTimeout => '超时';

  @override
  String get bomatchSourceBusy => '忙碌';

  @override
  String get bomatchSourceFailed => '失败';

  @override
  String get bomatchLinked => '已关联';

  @override
  String get bomatchSameIsbn => 'ISBN 相同';

  @override
  String get bomatchFewDetails => '详情较少';

  @override
  String get bomatchBack => '全部结果';

  @override
  String get bomatchFillEmpty => '填充空白';

  @override
  String get bomatchTakeAll => '全部采用';

  @override
  String get bomatchOnlyDifferences => '仅显示差异';

  @override
  String get bomatchNow => '当前';

  @override
  String get bomatchEmpty => '空';

  @override
  String get bomatchKindNew => '新增';

  @override
  String get bomatchKindChange => '更改';

  @override
  String get bomatchKindSmall => '细微更改';

  @override
  String get bomatchKindSame => '相同';

  @override
  String get bomatchKindNone => '结果中没有';

  @override
  String get bomatchKeep => '保留';

  @override
  String get bomatchUse => '使用';

  @override
  String get bomatchMerge => '合并';

  @override
  String get bomatchReplace => '替换';

  @override
  String get bomatchUseThis => '使用此项';

  @override
  String get bomatchChosen => '已选择';

  @override
  String bomatchOther(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本其他书',
      one: '1 本其他书',
    );
    return '$_temp0';
  }

  @override
  String bomatchChanged(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项更改',
      one: '1 项更改',
    );
    return '$_temp0';
  }

  @override
  String bomatchNew(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项新增',
      one: '1 项新增',
    );
    return '$_temp0';
  }

  @override
  String bomatchApply(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '应用 $count 项更改',
      one: '应用 1 项更改',
      zero: '应用',
    );
    return '$_temp0';
  }

  @override
  String bomatchOtherSources(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个其他来源',
      one: '1 个其他来源',
    );
    return '$_temp0';
  }

  @override
  String bomatchFrom(String source) {
    return '来自 $source';
  }

  @override
  String get breqTitle => '图书请求';

  @override
  String get breqTabRequest => '请求一本书';

  @override
  String get breqTabMine => '我的请求';

  @override
  String get breqTabAll => '全部请求';

  @override
  String get breqNoAccess => '你的账户无法在此服务器上请求图书。';

  @override
  String get breqTitleHint => '书名';

  @override
  String get breqAuthorHint => '作者';

  @override
  String get breqKindAudiobook => '有声书';

  @override
  String get breqKindEbook => '电子书';

  @override
  String get breqKindComic => '漫画';

  @override
  String get breqSearch => '搜索';

  @override
  String get breqSearching => '正在搜索…';

  @override
  String get breqSearchFailed => '无法搜索。请检查网络后重试。';

  @override
  String get breqSearchPrompt => '搜索书库中还没有的书即可发起请求。';

  @override
  String get breqNoResults => '未找到匹配的书籍';

  @override
  String get breqInLibrary => '已在你的书库中';

  @override
  String get breqYouAsked => '你已请求';

  @override
  String get breqSomeoneAsked => '他人已请求';

  @override
  String get breqView => '查看';

  @override
  String get breqRequest => '请求';

  @override
  String get breqRequested => '已请求';

  @override
  String get breqAddMeToo => '也算我一个';

  @override
  String get breqLibrary => '书库';

  @override
  String get breqLibraryApprover => '由审批者决定';

  @override
  String get breqLibraryChoose => '选择书库';

  @override
  String get breqNote => '给审批者的备注';

  @override
  String get breqNoteHint => '关于此请求需要说明的内容';

  @override
  String get breqAutoApproved => '你的请求会立即通过审批。';

  @override
  String get breqSubmitted => '请求已提交';

  @override
  String get breqJoined => '已将你加入现有请求';

  @override
  String get breqFailed => '无法发送请求';

  @override
  String get breqStatusPending => '待处理';

  @override
  String get breqStatusApproved => '已通过';

  @override
  String get breqStatusRejected => '已拒绝';

  @override
  String get breqStatusCancelled => '已取消';

  @override
  String get breqStatusSearching => '正在搜索';

  @override
  String get breqStatusGrabbed => '已找到资源';

  @override
  String get breqStatusDownloading => '正在下载';

  @override
  String get breqStatusImporting => '正在导入';

  @override
  String get breqStatusNeedsReview => '需要确认';

  @override
  String get breqStatusAvailable => '可用';

  @override
  String get breqStatusFailed => '失败';

  @override
  String get breqWaitingApproval => '等待审批';

  @override
  String get breqWaitingRelease => '等待选择资源';

  @override
  String get breqLookingForRelease => '正在查找资源';

  @override
  String get breqStartingDownload => '正在开始下载';

  @override
  String get breqAddingToLibrary => '正在添加到书库';

  @override
  String get breqWaitingCheck => '等待人工检查';

  @override
  String get breqReady => '已进入你的书库';

  @override
  String get breqSomethingWrong => '出了问题';

  @override
  String get breqShowHidden => '显示已隐藏';

  @override
  String get breqHidden => '已隐藏';

  @override
  String get breqMineEmpty => '你还没有请求过图书。';

  @override
  String get breqAllEmpty => '暂无请求。';

  @override
  String get breqLoadFailed => '无法加载请求。';

  @override
  String get breqLoadMore => '加载更多';

  @override
  String get breqApprove => '通过';

  @override
  String get breqReject => '拒绝';

  @override
  String get breqCancel => '取消请求';

  @override
  String get breqHide => '从我的列表隐藏';

  @override
  String get breqUnhide => '在我的列表显示';

  @override
  String get breqLeave => '退出请求';

  @override
  String get breqDelete => '删除请求';

  @override
  String get breqOpenBook => '打开书籍';

  @override
  String get breqCancelConfirm => '取消此请求？正在进行的下载也会停止。';

  @override
  String get breqDeleteConfirm => '删除此请求？此操作无法撤销。';

  @override
  String get breqRejectTitle => '拒绝请求';

  @override
  String get breqRejectReason => '原因（可选）';

  @override
  String get breqApproveTitle => '通过请求';

  @override
  String get breqApproveLibraryNeeded => '选择这本书归入的书库。';

  @override
  String get breqApprovedToast => '请求已通过';

  @override
  String get breqRejectedToast => '请求已拒绝';

  @override
  String get breqCancelledToast => '请求已取消';

  @override
  String get breqHiddenToast => '已从你的列表隐藏';

  @override
  String get breqRestoredToast => '已恢复到你的列表';

  @override
  String get breqDeletedToast => '请求已删除';

  @override
  String get breqLeftToast => '你已退出此请求';

  @override
  String get breqActionFailed => '无法更新请求';

  @override
  String get breqFactRequestedBy => '请求者';

  @override
  String get breqFactRequestedOn => '请求时间';

  @override
  String get breqFactLibrary => '书库';

  @override
  String get breqFactDecidedBy => '审批者';

  @override
  String get breqFactNote => '请求者备注';

  @override
  String get breqFactDecisionNote => '审批备注';

  @override
  String get breqFactAlsoWanted => '也想听的人';

  @override
  String get breqLibraryCta => '请求一本书';

  @override
  String get breqSettingsSubtitle => '请求书库中还没有的书';

  @override
  String get navHoldBookRequests => '图书请求';

  @override
  String breqLibraryDefault(String library) {
    return '默认（$library）';
  }

  @override
  String breqFailedReason(String reason) {
    return '无法发送请求：$reason';
  }

  @override
  String breqDownloadingPercent(int percent) {
    return '正在下载，$percent%';
  }

  @override
  String breqAddedTo(String library) {
    return '已添加到 $library';
  }

  @override
  String breqRejectedWithNote(String note) {
    return '已拒绝：$note';
  }

  @override
  String breqFailedWithReason(String reason) {
    return '失败：$reason';
  }

  @override
  String breqRequestedBy(String name) {
    return '由 $name 请求';
  }

  @override
  String breqActionFailedReason(String reason) {
    return '无法更新请求：$reason';
  }

  @override
  String breqFooterCta(String query) {
    return '请求“$query”';
  }

  @override
  String breqCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个请求',
      one: '1 个请求',
      zero: '暂无请求',
    );
    return '$_temp0';
  }

  @override
  String get breqFindRelease => '查找资源';

  @override
  String get breqTryAnotherRelease => '换个资源试试';

  @override
  String get breqApproveAndFind => '通过并查找资源';

  @override
  String get breqReviewButton => '检查下载';

  @override
  String get breqStopDownload => '停止下载';

  @override
  String get breqStopDownloadConfirm => '停止此下载？请求会回到“已通过”，以便另选资源。';

  @override
  String get breqDiscardImport => '放弃下载';

  @override
  String get breqDiscardConfirm => '放弃此下载？请求会被标记为失败，可换其他资源重试。';

  @override
  String get breqFileAnyway => '添加到书库';

  @override
  String get breqFiledToast => '已添加到书库';

  @override
  String get breqDiscardedToast => '已放弃下载';

  @override
  String get breqStoppedToast => '下载已停止';

  @override
  String get breqGrabTitle => '下载此资源？';

  @override
  String get breqGrab => '下载';

  @override
  String get breqGrabbed => '下载已开始';

  @override
  String get breqGrabFailed => '无法开始下载';

  @override
  String get breqReleaseVipWarning => '该站点仅允许 VIP 账户下载。';

  @override
  String get breqReleaseNoBookFile => '此资源中没有 BookOrbit 可添加到书库的书籍文件。';

  @override
  String get breqReleaseCheckFailed => '无法检查此资源的内容。请重试或选择其他资源。';

  @override
  String get breqCheckingRelease => '正在检查文件…';

  @override
  String get breqSearchAgain => '重新搜索';

  @override
  String get breqSearchTerms => '搜索词';

  @override
  String get breqIsbnHint => '留空则按书名和作者搜索';

  @override
  String get breqSearchingIndexers => '正在搜索索引站点，最多可能需要一分钟。';

  @override
  String get breqReleasesFailed => '无法搜索资源。';

  @override
  String get breqNoSourcesSetUp => 'BookOrbit 中未配置搜索来源。';

  @override
  String get breqNoSourcesOn => 'BookOrbit 中所有搜索来源均已关闭。';

  @override
  String get breqNoSourceCarries => '你的搜索来源都不提供此类书籍。';

  @override
  String get breqNoReleases => '未找到资源。请尝试其他搜索词。';

  @override
  String get breqFromCache => '来自最近的搜索';

  @override
  String get breqIndexerUnauthorized => '登录失败';

  @override
  String get breqIndexerThrottled => '忙碌';

  @override
  String get breqIndexerTimeout => '超时';

  @override
  String get breqIndexerUnreachable => '无法访问';

  @override
  String get breqIndexerNoMedium => '不提供此内容';

  @override
  String get breqIndexerError => '失败';

  @override
  String get breqSortBest => '最佳匹配';

  @override
  String get breqSortSeeders => '做种数';

  @override
  String get breqSortSize => '大小';

  @override
  String get breqSortNewest => '最新';

  @override
  String get breqFreeleech => '免费下载';

  @override
  String get breqVipOnly => '仅限 VIP';

  @override
  String get breqAlreadyGrabbed => '之前已下载';

  @override
  String get breqReasonIsbn => 'ISBN';

  @override
  String get breqReasonTitle => '标题';

  @override
  String get breqReasonAuthor => '作者';

  @override
  String get breqReasonUnknownFormat => '未知格式';

  @override
  String get breqReasonExpectedSize => '大小';

  @override
  String get breqReasonSuspiciousSize => '大小异常';

  @override
  String get breqReasonFreeleech => '免费下载';

  @override
  String get breqReasonSeveralBooks => '多本书';

  @override
  String get breqReviewTitle => '下载等待检查';

  @override
  String get breqReviewFailed => '无法加载下载详情。';

  @override
  String get breqReviewDockGone => '下载的文件已不在 Book Dock 中。';

  @override
  String get breqReviewNoLibrary => '此请求没有可添加书籍的书库。';

  @override
  String breqGrabFailedReason(String reason) {
    return '无法开始下载：$reason';
  }

  @override
  String breqReleaseCheckFailedReason(String reason) {
    return '无法检查此资源的内容：$reason';
  }

  @override
  String breqReleasesFailedReason(String reason) {
    return '无法搜索资源：$reason';
  }

  @override
  String breqReviewFailedReason(String reason) {
    return '无法加载下载详情：$reason';
  }

  @override
  String breqReleaseCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个资源',
      one: '1 个资源',
      zero: '暂无资源',
    );
    return '$_temp0';
  }

  @override
  String breqFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
      one: '1 个文件',
    );
    return '$_temp0';
  }

  @override
  String breqReviewFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
      one: '1 个文件',
    );
    return '$_temp0';
  }

  @override
  String breqSeeders(int seeders, int leechers) {
    return '$seeders 做种，$leechers 下载';
  }

  @override
  String breqScore(int score) {
    return '评分 $score';
  }

  @override
  String breqReasonPreferredFormat(String format) {
    return '偏好 $format';
  }

  @override
  String breqReasonFormat(String format) {
    return '$format';
  }

  @override
  String breqReasonSeeders(String count) {
    return '$count 个做种';
  }

  @override
  String breqReviewScore(int score, int threshold) {
    return '匹配分 $score。评分达到 $threshold 及以上的资源会自动下载。';
  }

  @override
  String breqReviewRequested(String value) {
    return '请求：$value';
  }

  @override
  String breqReviewImported(String value) {
    return '已下载：$value';
  }

  @override
  String get breqKindBoth => '两者';

  @override
  String get breqEbookLibrary => '电子书书库';

  @override
  String get breqAudiobookLibrary => '有声书书库';

  @override
  String get breqRequestBoth => '同时请求两者';

  @override
  String get breqAddMeToBoth => '两个都加上我';

  @override
  String get breqRequestEbook => '请求电子书';

  @override
  String get breqRequestAudiobook => '请求有声书';

  @override
  String get breqAddMeEbook => '将我也加入电子书请求';

  @override
  String get breqAddMeAudiobook => '将我也加入有声书请求';

  @override
  String get breqPairSubmitted => '已请求电子书和有声书';

  @override
  String get breqPairOneJoined => '两者都已请求。其中一个已在处理中，因此已将你加入该请求';

  @override
  String get breqJoinedBoth => '已将你加入两个请求';

  @override
  String get breqJoinsOwned => '已请求。将与你书库中已有的副本合并';

  @override
  String get speedBookmarkInControls => '媒体控制中的速度与书签';

  @override
  String get speedBookmarkOnSubtitle => '开启——通知显示速度与书签；章节跳过保留在 Android Auto';

  @override
  String get speedBookmarkOffSubtitle => '关闭——通知显示章节跳过；速度与书签保留在 Android Auto';

  @override
  String get lockSeekBar => '锁定搜索栏';

  @override
  String get lockSeekBarOnSubtitle => '开启——通知、锁屏和车机上的进度条显示进度但不可拖动';

  @override
  String get lockSeekBarOffSubtitle => '关闭——可拖动通知、锁屏和车机上的进度条来跳转';

  @override
  String get autoRewindOnResume => '恢复播放时自动倒退';

  @override
  String autoRewindOnSubtitle(String min, String max) {
    return '开启 - 根据暂停时长倒回 $min 秒至 $max 秒';
  }

  @override
  String get autoRewindOffSubtitle => '关闭';

  @override
  String get rewindRange => '倒回范围';

  @override
  String get rewindAfterPausedFor => '暂停后倒回';

  @override
  String get rewindAnyPause => '任何暂停';

  @override
  String get rewindAlwaysLabel => '始终';

  @override
  String get rewindAlwaysDescription => '每次恢复播放都倒回，即使是短暂中断';

  @override
  String rewindAfterDescription(String seconds) {
    return '仅在暂停 $seconds 秒以上时倒回';
  }

  @override
  String get chapterBarrier => '章节边界';

  @override
  String get chapterBarrierSubtitle => '不回退到当前章节开头之前';

  @override
  String get rewindInstant => '立即';

  @override
  String rewindPause(String duration) {
    return '暂停 $duration';
  }

  @override
  String get rewindNoRewind => '不倒回';

  @override
  String rewindSeconds(String seconds) {
    return '倒回 $seconds 秒';
  }

  @override
  String get sectionSleepTimer => '睡眠定时器';

  @override
  String get sleep => '睡眠';

  @override
  String get sleepTimer => '睡眠定时器';

  @override
  String get shakeDuringSleepTimer => '睡眠定时器期间摇一摇';

  @override
  String get shakeOff => '关闭';

  @override
  String get shakeAddTime => '添加时间';

  @override
  String get shakeReset => '重置';

  @override
  String get shakeAdds => '摇一摇添加';

  @override
  String get sleepAddAmount => '增加时长';

  @override
  String shakeAddsValue(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get shakeSensitivity => '摇一摇灵敏度';

  @override
  String get shakeSensitivityVeryLow => '非常低';

  @override
  String get shakeSensitivityLow => '低';

  @override
  String get shakeSensitivityMedium => '中';

  @override
  String get shakeSensitivityHigh => '高';

  @override
  String get shakeSensitivityVeryHigh => '非常高';

  @override
  String get buttonDuringSleepTimer => '入睡模式下的耳机按键';

  @override
  String get buttonDuringSleepTimerHint => '在入睡模式最后的时段，单击不再暂停而是重置定时器；双击仍为跳过。';

  @override
  String get resetTimerOnPause => '暂停时重置定时器';

  @override
  String get resetTimerOnPauseOnSubtitle => '恢复播放时，定时器从完整时长重新开始';

  @override
  String get resetTimerOnPauseOffSubtitle => '定时器从上次停止的位置继续';

  @override
  String get fadeVolumeBeforeSleep => '睡前渐弱音量';

  @override
  String get fadeVolumeOnSubtitle => '在最后30秒逐渐降低音量';

  @override
  String get fadeVolumeOffSubtitle => '定时器结束时立即停止播放';

  @override
  String get autoSleepTimer => '自动睡眠定时器';

  @override
  String autoSleepTimerOnSubtitle(String start, String end, int duration) {
    return '$start - $end - $duration 分钟';
  }

  @override
  String get autoSleepTimerOffSubtitle => '在指定时间段内自动启动睡眠定时器';

  @override
  String get windowStart => '开始时间';

  @override
  String get windowEnd => '结束时间';

  @override
  String get timerDuration => '定时器时长';

  @override
  String get timer => '定时器';

  @override
  String get endOfChapter => '章节结束';

  @override
  String startMinTimer(int minutes) {
    return '启动 $minutes 分钟定时器';
  }

  @override
  String sleepAfterChapters(int count, String label) {
    return '在 $count $label后睡眠';
  }

  @override
  String get addMoreTime => '添加时间';

  @override
  String get cancelTimer => '取消定时器';

  @override
  String chaptersLeftCount(int count) {
    return '剩余 $count 章';
  }

  @override
  String get sectionDownloadsAndStorage => '下载与存储';

  @override
  String get downloadOverWifiOnly => '仅在 Wi-Fi 下下载';

  @override
  String get downloadOverWifiOnSubtitle => '开启 - 禁止使用移动数据下载';

  @override
  String get downloadOverWifiOffSubtitle => '关闭 - 任何网络均可下载';

  @override
  String get autoDownloadOnWifi => 'Wi-Fi 下自动下载';

  @override
  String get autoDownloadOnWifiInfoTitle => 'Wi-Fi 下自动下载';

  @override
  String get autoDownloadOnWifiInfoContent =>
      '当您开始在线播放书籍时，系统会在后台同步下载完整内容，无需手动操作即可实现离线收听。后台下载将严格遵循上方的“下载网络设置”，若您希望在移动网络下也能自动下载，请将其设置为“任意网络”。';

  @override
  String get autoDownloadOnWifiOnSubtitle => '在 Wi-Fi 下开始流式播放时，书籍将在后台下载';

  @override
  String get autoDownloadOnWifiOffSubtitle => '关闭';

  @override
  String get concurrentDownloads => '同时下载数';

  @override
  String get autoDownload => '自动下载';

  @override
  String get autoDownloadSubtitle => '在系列或播客详情页单独启用';

  @override
  String get autoDownloadEnabledFor => '已开启时长';

  @override
  String get autoDownloadEnabledForNone => '暂无';

  @override
  String get autoDownloadSourceUnnamed => '尚未加载';

  @override
  String get keepNext => '保留接下来';

  @override
  String get keepNextInfoTitle => '保留接下来';

  @override
  String get keepNextInfoContent =>
      '要保留下载的项目数量，包括你当前正在收听的项目。例如，\"保留接下来3个\"意味着当前书籍加上系列或播客中的下2本将保持下载状态。';

  @override
  String get deleteAbsorbedDownloads => '删除已完成的下载';

  @override
  String get deleteAbsorbedDownloadsInfoTitle => '删除已完成的下载';

  @override
  String get deleteAbsorbedDownloadsInfoContent =>
      '启用后，在 Absorb 中听完的已下载书籍或剧集会自动从此设备删除。如果你在网页端或其他设备上听完，保存在此设备上的下载不会被删除。';

  @override
  String get deleteAbsorbedOnSubtitle => '已完成项目将被移除以节省空间';

  @override
  String get deleteAbsorbedOffSubtitle => '关闭 - 保留已完成的下载';

  @override
  String get downloadLocation => '下载位置';

  @override
  String get storageUsed => '已用存储';

  @override
  String storageUsedByDownloads(String size) {
    return '下载已使用 $size';
  }

  @override
  String storageFreeOfTotal(String free, String total) {
    return '总计 $total，可用 $free';
  }

  @override
  String get manageDownloads => '管理下载';

  @override
  String get streamingCache => '流式缓存';

  @override
  String get streamingCacheInfoTitle => '流式缓存';

  @override
  String get streamingCacheInfoContent =>
      '将流式播放的音频缓存到磁盘，以便在快退或重复收听时无需重新下载。缓存会自动管理 - 达到大小限制时，最旧的文件会被移除。这与完全下载的书籍是分开的';

  @override
  String get streamingCacheOff => '关闭';

  @override
  String get streamingCacheOffSubtitle => '关闭 - 音频直接流式播放，不缓存';

  @override
  String streamingCacheOnSubtitle(int size) {
    return '$size MB - 最近流式播放的音频将缓存到磁盘';
  }

  @override
  String get clearCache => '清除缓存';

  @override
  String get streamingCacheCleared => '流式缓存已清除';

  @override
  String get sectionLibrary => '媒体库';

  @override
  String get hideEbookOnlyTitles => '隐藏仅含电子书的标题';

  @override
  String get hideEbookOnlyOnSubtitle => '隐藏没有音频文件的书籍';

  @override
  String get hideEbookOnlyOffSubtitle => '关 - 显示所有媒体库项目';

  @override
  String get homeCardsOpenDetails => '从首页打开详情';

  @override
  String get homeCardsOpenDetailsOnSubtitle => '点击“继续收听”或“继续阅读”卡片会打开详情';

  @override
  String get homeCardsOpenDetailsOffSubtitle => '点击“继续收听”或“继续阅读”卡片会从上次位置继续播放';

  @override
  String get showGoodreadsButton => '显示 Goodreads 按钮';

  @override
  String get showGoodreadsOnSubtitle => '书籍详情页显示 Goodreads 的链接';

  @override
  String get showGoodreadsOffSubtitle => '关 - 隐藏 Goodreads 按钮';

  @override
  String get sectionPermissions => '权限';

  @override
  String get notifications => '通知';

  @override
  String get notificationsSubtitle => '用于下载进度和播放控制';

  @override
  String get notificationsAlreadyEnabled => '通知权限已启用';

  @override
  String get unrestrictedBattery => '无限制电池权限';

  @override
  String get unrestrictedBatterySubtitle => '防止 Android 终止后台播放';

  @override
  String get batteryAlreadyUnrestricted => '电池优化已关闭';

  @override
  String get sectionIssuesAndSupport => '问题与支持';

  @override
  String get bugsAndFeatureRequests => '错误报告与功能请求';

  @override
  String get bugsAndFeatureRequestsSubtitle => '在 GitHub 上提交问题';

  @override
  String get joinDiscord => '加入 Discord';

  @override
  String get joinDiscordSubtitle => '社区、支持与更新';

  @override
  String get contact => '联系我们';

  @override
  String get contactSubtitle => '通过邮件发送设备信息';

  @override
  String get enableLogging => '启用日志记录';

  @override
  String get enableLoggingOnSubtitle => '开启 - 日志保存到文件（重启生效）';

  @override
  String get enableLoggingOffSubtitle => '关闭 - 不捕获日志';

  @override
  String get loggingEnabledSnackbar => '日志记录已启用 - 重启应用以开始捕获';

  @override
  String get loggingDisabledSnackbar => '日志记录已禁用 - 重启应用以停止捕获';

  @override
  String get sendLogs => '发送日志';

  @override
  String get sendLogsSubtitle => '以附件形式分享日志文件';

  @override
  String failedToShare(String error) {
    return '分享失败: $error';
  }

  @override
  String get clearLogs => '清除日志';

  @override
  String get logsCleared => '日志已清除';

  @override
  String get clearLogsQuestion => '清空日志？';

  @override
  String get clearLogsContent => '此操作无法撤销。如需保留，请先发送。';

  @override
  String get sectionAdvanced => '高级';

  @override
  String get localServer => '本地服务器';

  @override
  String get localServerInfoTitle => '本地服务器';

  @override
  String get localServerInfoContent =>
      '如果你在家运行 Audiobookshelf 服务器，可以在此设置本地/局域网 URL。Absorb 在检测到您处于家庭网络时会自动切换到更快的本地连接，而在外出时则回退到远程 URL。';

  @override
  String get localServerOnConnectedSubtitle => '已通过本地服务器连接';

  @override
  String get localServerOnRemoteSubtitle => '已启用 - 正在使用远程服务器';

  @override
  String get localServerOffSubtitle => '在家庭 Wi-Fi 下自动切换到局域网服务器';

  @override
  String get localServerUrlLabel => '本地服务器 URL';

  @override
  String get localServerUrlHint => 'http://192.168.1.100:13378';

  @override
  String get localServerUrlSetSnackbar => '本地服务器 URL 已设置 - 当处于家庭网络时将自动连接';

  @override
  String get disableAudioFocus => '禁用音频焦点';

  @override
  String get disableAudioFocusInfoTitle => '音频焦点';

  @override
  String get disableAudioFocusInfoContent =>
      '默认情况下，Android 一次只给一个应用音频“焦点” - 当 Absorb 播放时，其他音频（音乐、视频）会暂停。禁用音频焦点可让 Absorb 与其他应用同时播放。无论此设置如何，来电时始终会暂停播放。';

  @override
  String get disableAudioFocusOnSubtitle => '开启 - 与其他音频同时播放（来电时仍会暂停）';

  @override
  String get disableAudioFocusOffSubtitle => '关闭 - Absorb 播放时其他音频暂停';

  @override
  String get restartRequired => '需要重启';

  @override
  String get restartRequiredContent => '音频焦点更改需要完全重启应用才能生效。立即关闭应用？';

  @override
  String get closeApp => '关闭应用';

  @override
  String get trustAllCertificates => '信任所有证书';

  @override
  String get trustAllCertificatesInfoTitle => '自签名证书';

  @override
  String get mp3IndexSeeking => 'MP3 索引定位';

  @override
  String get mp3IndexSeekingInfoTitle => 'MP3 索引定位';

  @override
  String get mp3IndexSeekingInfoContent =>
      '仅当你的 MP3 文件无法定位到正确位置时开启。定位不准通常来自可变码率（VBR）MP3。索引定位会在读取文件时建立精确时间表，因此在大文件靠后位置跳转可能需要一点时间——流式播放时尤其明显，因为必须先读到该位置。下次开始播放书籍或播客单集时生效。';

  @override
  String get mp3IndexSeekingOnSubtitle => '开启——对 VBR MP3 精确寻址';

  @override
  String get mp3IndexSeekingOffSubtitle => '关闭——普通寻址';

  @override
  String get trustAllCertificatesInfoContent =>
      '如果你的 Audiobookshelf 服务器使用自签名证书或自定义根 CA，请启用此选项。启用后，Absorb 将跳过所有连接的 TLS 证书验证。仅在您信任当前网络环境时启用。';

  @override
  String get trustAllCertificatesOnSubtitle => '开启 - 接受所有证书';

  @override
  String get trustAllCertificatesOffSubtitle => '关闭 - 仅接受受信任的证书';

  @override
  String get supportTheDev => '支持开发者';

  @override
  String get buyMeACoffee => '请我喝杯咖啡';

  @override
  String appVersionFormat(String version) {
    return 'Absorb v$version';
  }

  @override
  String betaLabel(int number) {
    return 'Beta $number';
  }

  @override
  String appVersionWithServerFormat(String version, String serverVersion) {
    return 'Absorb v$version  -  服务器 $serverVersion';
  }

  @override
  String get backupAndRestore => '备份与恢复';

  @override
  String get backupAndRestoreSubtitle => '将所有设置保存到文件或从文件恢复';

  @override
  String get backUp => '备份';

  @override
  String get restore => '恢复';

  @override
  String get allBookmarks => '所有书签';

  @override
  String get allBookmarksSubtitle => '查看所有书籍的书签';

  @override
  String get switchAccount => '切换账户';

  @override
  String get addAccount => '添加账户';

  @override
  String get logOut => '退出登录';

  @override
  String get includeLoginInfoTitle => '包含登录信息？';

  @override
  String get includeLoginInfoContent =>
      '你是否希望在备份中包含所有已保存账号的登录凭据？\n\n这会让在新设备上恢复变得容易，但文件中将包含您的身份验证令牌。';

  @override
  String get noSettingsOnly => '否，仅设置';

  @override
  String get yesIncludeAccounts => '是，包含账户';

  @override
  String get backupSavedWithAccounts => '备份已保存（包含账户）';

  @override
  String get backupSavedSettingsOnly => '备份已保存（仅设置）';

  @override
  String backupFailed(String error) {
    return '备份失败: $error';
  }

  @override
  String get restoreBackupTitle => '恢复备份？';

  @override
  String get restoreBackupContent => '这将用备份中的值替换您当前的所有设置。';

  @override
  String fromAbsorbVersion(String version) {
    return '来自 Absorb v$version';
  }

  @override
  String restoreAccountsChip(int count) {
    return '$count 个账户';
  }

  @override
  String restoreBookmarksChip(int count) {
    return '$count 本书的书签';
  }

  @override
  String get restoreCustomHeadersChip => '自定义请求头';

  @override
  String get invalidBackupFile => '无效的备份文件';

  @override
  String get settingsRestoredSuccessfully => '设置恢复成功';

  @override
  String restoreFailed(String error) {
    return '恢复失败: $error';
  }

  @override
  String get logOutTitle => '退出登录？';

  @override
  String get logOutContent => '这将使你退出登录。你的下载内容将保留在本设备上。';

  @override
  String get signOut => '退出登录';

  @override
  String get changePasswordTitle => '修改密码';

  @override
  String get changePasswordSubtitle => '安全地更新你的 Audiobookshelf 密码';

  @override
  String get currentPassword => '当前密码';

  @override
  String get newPassword => '新密码';

  @override
  String get confirmNewPassword => '确认新密码';

  @override
  String get passwordChangeEffect =>
      '修改密码会使你在其他设备上的 Audiobookshelf 会话退出登录，本机保持登录。';

  @override
  String get passwordFieldsRequired => '请填写所有密码字段';

  @override
  String get passwordsDoNotMatch => '两次输入的新密码不一致';

  @override
  String get passwordChanged => '密码已修改，其他已登录设备已断开。';

  @override
  String get passwordInvalid => '当前密码不正确';

  @override
  String get passwordChangeUnsupported => '此服务器版本不支持在 Absorb 中安全修改密码';

  @override
  String get passwordChangeFailed => '无法修改密码';

  @override
  String get otherUserPasswordResetWarning => '修改此密码会让该用户在所有设备上退出登录。';

  @override
  String get manageSessionsTitle => '已登录设备';

  @override
  String get manageSessionsSubtitle => '查看并移除 Audiobookshelf 会话';

  @override
  String get sessionsCurrent => '当前设备';

  @override
  String get sessionsUnknownDevice => '未知设备';

  @override
  String sessionsLastActive(String date) {
    return '最近活动：$date';
  }

  @override
  String get sessionsNone => '无活动会话';

  @override
  String get sessionsLoadMore => '加载更多';

  @override
  String get sessionsUnsupported => '会话管理需要 Audiobookshelf 2.36 或更高版本。';

  @override
  String get sessionsLoadFailed => '无法加载已登录设备';

  @override
  String get sessionsLegacyNotice => '此登录没有刷新会话，因此 Absorb 无法在列表中识别该设备。';

  @override
  String get sessionsRemove => '退出该设备';

  @override
  String get sessionsRemoveTitle => '退出此设备？';

  @override
  String get sessionsRemoveContent => '这会移除其刷新会话。其当前访问凭据在该短期令牌过期前可能仍然有效。';

  @override
  String get sessionsRemoved => '设备已退出登录';

  @override
  String get sessionsRemoveFailed => '无法退出该设备';

  @override
  String get sessionsSignOutAll => '退出所有设备';

  @override
  String get sessionsSignOutAllTitle => '在所有设备退出登录？';

  @override
  String get sessionsSignOutAllContent => '这会移除所有刷新会话，包括本设备。现有访问令牌在过期前可能仍然有效。';

  @override
  String podcastScheduleServerTime(String timeZone) {
    return '定时任务使用服务器时间（$timeZone）';
  }

  @override
  String get podcastScheduleServerTimeUnknown => '定时任务使用服务器时间';

  @override
  String get editServerAddressTitle => '编辑服务器地址';

  @override
  String editServerAddressSubtitle(String username) {
    return '更新 $username 的地址。如果服务器地址变更，请使用此功能——仍是同一台服务器，只是新地址。统计与下载内容会保留。';
  }

  @override
  String get editServerAddressField => '服务器地址';

  @override
  String get editServerAddressUpdated => '服务器地址已更新';

  @override
  String get editServerAddressFailed => '无法更新服务器地址';

  @override
  String get editServerAddressAction => '编辑服务器地址';

  @override
  String get editServerConnectionTitle => '编辑服务器连接';

  @override
  String editServerConnectionSubtitle(String username) {
    return '更新 $username 的服务器地址和自定义请求头。统计与下载内容会保留。';
  }

  @override
  String get editServerConnectionAction => '编辑服务器连接';

  @override
  String get editServerConnectionUpdated => '服务器连接已更新';

  @override
  String get editServerConnectionFailed => '无法更新服务器连接';

  @override
  String get editCustomHeadersDescription =>
      '用于 Cloudflare 隧道或反向代理。这些请求头仅对当前保存的账户生效。';

  @override
  String get removeAccountAction => '移除账户';

  @override
  String get removeAccountTitle => '移除账户？';

  @override
  String removeAccountContent(String username, String server) {
    return '从已保存账户中移除 $server 上的 $username？\n\n您可以稍后通过重新登录来再次添加。';
  }

  @override
  String get switchAccountTitle => '切换账户？';

  @override
  String switchAccountContent(String username, String server) {
    return '切换到 $server 上的 $username？\n\n你当前的播放将停止，应用将重新加载另一个账户的数据。';
  }

  @override
  String get switchButton => '切换';

  @override
  String get downloadLocationSheetTitle => '下载位置';

  @override
  String get downloadLocationSheetSubtitle => '选择有声读物的保存位置';

  @override
  String get currentLocation => '当前位置';

  @override
  String get existingDownloadsWarning => '现有的下载内容会保留在其当前位置。只有新的下载内容才会使用新路径。';

  @override
  String get chooseFolder => '选择文件夹';

  @override
  String get chooseDownloadFolder => '选择下载文件夹';

  @override
  String get storagePermissionDenied => '存储权限已被永久拒绝 - 请在应用设置中启用';

  @override
  String get openSettings => '打开设置';

  @override
  String get storagePermissionRequired => '自定义下载位置需要存储权限';

  @override
  String get cannotWriteToFolder => '无法写入该文件夹 - 请选择其他位置或在系统设置中授予文件访问权限';

  @override
  String downloadLocationSetTo(String label) {
    return '下载位置已设置为 $label';
  }

  @override
  String get resetToDefault => '重置为默认';

  @override
  String get resetToDefaultStorage => '重置为默认存储';

  @override
  String legacyDownloadsNotice(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个下载位于已无法打开的旧自定义文件夹中。请重新下载或忽略此提示。',
      one: '1 个下载位于已无法打开的旧自定义文件夹中。请重新下载或忽略此提示。',
    );
    return '$_temp0';
  }

  @override
  String get redownload => '重新下载';

  @override
  String get redownloadStarted => '正在重新下载';

  @override
  String get dismiss => '忽略';

  @override
  String get tipsAndHiddenFeatures => '技巧与隐藏功能';

  @override
  String get tipsSubtitle => '充分利用 Absorb';

  @override
  String get adminTitle => '服务器管理';

  @override
  String get adminTasksTitle => '服务器活动';

  @override
  String adminTasksRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个任务正在运行',
      one: '1 个任务正在运行',
    );
    return '$_temp0';
  }

  @override
  String get adminTasksRecent => '最近的服务器活动';

  @override
  String get adminTasksEmpty => '没有正在运行的服务器任务';

  @override
  String adminTaskScanSummary(int added, int updated, int missing) {
    return '新增 $added 项 - 更新 $updated 项 - 缺失 $missing 项';
  }

  @override
  String get adminServer => '服务器';

  @override
  String get adminVersion => '版本';

  @override
  String get adminUsers => '用户';

  @override
  String get adminOnline => '在线';

  @override
  String get adminBackup => '备份';

  @override
  String get adminPurgeCache => '清除缓存';

  @override
  String get adminManage => '管理';

  @override
  String adminUsersSubtitle(int userCount, int onlineCount) {
    return '$userCount 个账户 - $onlineCount 人在线';
  }

  @override
  String get adminPodcasts => '播客';

  @override
  String get adminPodcastsSubtitle => '搜索、添加和管理节目';

  @override
  String get adminScan => '扫描';

  @override
  String get adminScanning => '正在扫描...';

  @override
  String get adminMatchAll => '匹配全部';

  @override
  String get adminMatching => '正在匹配...';

  @override
  String get adminMatchAllTitle => '匹配所有项目？';

  @override
  String adminMatchAllContent(String name) {
    return '为 $name 中的所有项目匹配元数据？这可能需要一些时间。';
  }

  @override
  String adminScanStarted(String name) {
    return '已开始扫描 $name';
  }

  @override
  String get adminBackupCreated => '备份已创建';

  @override
  String get adminBackupFailed => '备份失败';

  @override
  String get adminCachePurged => '缓存已清除';

  @override
  String get adminRmab => 'ReadMeABook';

  @override
  String get adminRmabSubtitle => '在应用中打开';

  @override
  String get adminRmabAdd => '添加 ReadMeABook 集成';

  @override
  String get adminRmabUrlTitle => 'ReadMeABook URL';

  @override
  String get adminRmabUrlHelp => '粘贴包含登录令牌的 URL。在 RMAB 的管理 -> 用户中生成。';

  @override
  String get adminRmabUrlHint => 'https://rmab.example.com/?token=...';

  @override
  String get adminRmabInvalidUrl => '请输入有效的 http(s) URL';

  @override
  String get adminRmabSaved => '已保存 ReadMeABook';

  @override
  String get adminRmabRemoved => '已移除 ReadMeABook';

  @override
  String get adminRmabReload => '重新加载';

  @override
  String get adminRmabLoadFailed => '无法加载 ReadMeABook，请检查 URL。';

  @override
  String get adminRmabConnected => '已连接';

  @override
  String get adminRmabAskAdmin => '请向您的服务器管理员获取登录 URL';

  @override
  String get adminRmabUrlHelpUser =>
      '请向您的服务器管理员获取登录 URL，管理员可在 RMAB 的管理 -> 用户中生成。';

  @override
  String get adminRmabSettingsInfo =>
      'ReadMeABook 是一个用于请求和下载有声书的自托管服务，需要由您的服务器管理员安装和设置。';

  @override
  String get rmabConfigTitle => '连接 ReadMeABook';

  @override
  String get rmabConfigExplainerAdmin =>
      'ReadMeABook 是自托管的求书服务。在 RMAB 的“管理面板 > 设置 > API”中生成 API 令牌，然后在下方填入服务器地址和令牌。Absorb 不托管也不下载任何内容，只会向你的服务器发送请求。';

  @override
  String get rmabConfigExplainerUser =>
      'ReadMeABook 是自托管的求书服务。向服务器管理员索取 RMAB 地址和 API 令牌。Absorb 不托管也不下载任何内容，只会向你的服务器发送请求。';

  @override
  String get rmabConfigLearnMore => '了解 ReadMeABook';

  @override
  String get rmabConfigBaseUrlLabel => 'RMAB 服务器地址';

  @override
  String get rmabConfigBaseUrlHint => 'https://rmab.example.com';

  @override
  String get rmabConfigTokenLabel => 'API 令牌';

  @override
  String get rmabConfigTokenHint => 'rmab_...';

  @override
  String get rmabConfigLegacyUrlLabel => '网页登录地址（可选）';

  @override
  String get rmabConfigLegacyUrlHint => 'https://rmab.example.com/?token=...';

  @override
  String get rmabConfigLegacyUrlHelp =>
      '粘贴自动登录链接，这样“在浏览器中打开”会直接进入已登录状态。留空则使用普通登录。';

  @override
  String get rmabConfigHeadersHelp =>
      '随每个 ReadMeABook 请求发送的额外请求头，用于 Cloudflare Access 等反向代理。';

  @override
  String get rmabConfigConnect => '连接';

  @override
  String get rmabConfigDisconnect => '断开连接';

  @override
  String get rmabConfigOpenWebView => '在浏览器中打开';

  @override
  String rmabConfigConnectedAs(String name) {
    return '已连接为 $name';
  }

  @override
  String get rmabConfigErrorInvalidUrl => '请输入有效的 http(s) 地址';

  @override
  String get rmabConfigErrorMissingToken => '请输入 API 令牌';

  @override
  String get rmabConfigErrorUnauthorized => '令牌被服务器拒绝';

  @override
  String get rmabConfigErrorForbidden => '此令牌无权执行该操作';

  @override
  String get rmabConfigErrorNetwork => '无法连接 RMAB。请检查地址。';

  @override
  String get rmabConfigErrorGeneric => '无法连接';

  @override
  String get rmabConfigSavedSnackbar => 'ReadMeABook 已连接';

  @override
  String get rmabConfigDisconnectedSnackbar => 'ReadMeABook 已断开';

  @override
  String get rmabRequestCta => '通过 ReadMeABook 请求';

  @override
  String get rmabSearchHeader => '通过 ReadMeABook 请求';

  @override
  String get rmabSearchHint => '按书名或作者搜索';

  @override
  String get rmabSearchEmpty => '你的 ReadMeABook 服务器上没有匹配项';

  @override
  String get rmabSearchError => '无法搜索 ReadMeABook';

  @override
  String get rmabSearchPrompt => '输入书名或作者以搜索';

  @override
  String get rmabSearchFooterPrompt => '想找别的？';

  @override
  String rmabSearchFooterCta(String query) {
    return '在 ReadMeABook 中搜索“$query”';
  }

  @override
  String get rmabBookDetailExplainer =>
      '此请求将通过你的 ReadMeABook 服务器发送，由管理员审核处理。你可以在 ReadMeABook 卡片的“我的请求”中查看进度。';

  @override
  String get rmabBookAlreadyAvailable => '已在你的书库中';

  @override
  String get rmabBookAlreadyRequested => '已请求';

  @override
  String get rmabRequestSubmitting => '正在提交…';

  @override
  String get rmabRequestSent => '请求已发送';

  @override
  String get rmabRequestErrorAlreadyAvailable => '已在你的书库中';

  @override
  String get rmabRequestErrorBeingProcessed => '已在处理中';

  @override
  String get rmabRequestErrorDuplicate => '你已请求过此书';

  @override
  String get rmabRequestErrorValidation => '无法发送请求';

  @override
  String get rmabRequestErrorUserNotFound => '令牌对应的用户已不存在。请重新连接 ReadMeABook。';

  @override
  String get rmabRequestErrorIgnored => '此书籍在你的忽略列表中';

  @override
  String get rmabRequestErrorGeneric => '无法发送请求';

  @override
  String get rmabRequestErrorTokenRejected => '令牌被服务器拒绝。请重新连接 ReadMeABook。';

  @override
  String get rmabMyRequestsTab => '我的请求';

  @override
  String get rmabSetupTab => '设置';

  @override
  String get rmabMyRequestsEmpty => '你还没有请求过书籍';

  @override
  String get rmabMyRequestsError => '无法加载请求';

  @override
  String get rmabMyRequestsRefresh => '刷新';

  @override
  String get rmabRequestDetailTitle => '请求详情';

  @override
  String get rmabRequestDetailStatus => '状态';

  @override
  String get rmabRequestDetailRequestedOn => '请求时间';

  @override
  String get rmabRequestDetailCompletedOn => '完成于';

  @override
  String get rmabRequestDetailProgress => '进度';

  @override
  String get rmabStatusActive => '进行中';

  @override
  String get rmabStatusWaiting => '等待中';

  @override
  String get rmabStatusAvailable => '可用';

  @override
  String get rmabStatusDownloaded => '已下载';

  @override
  String get rmabStatusFailed => '失败';

  @override
  String get rmabStatusCancelled => '已取消';

  @override
  String get rmabStatusDenied => '已拒绝';

  @override
  String get rmabStatusUnknown => '未知';

  @override
  String narratedBy(String narrator) {
    return '朗读者: $narrator';
  }

  @override
  String get onAudible => '在 Audible 上';

  @override
  String percentComplete(String percent) {
    return '已完成 $percent%';
  }

  @override
  String get absorbing => '收听中...';

  @override
  String get absorbAgain => '重新收听';

  @override
  String get absorb => '收听';

  @override
  String get ebookOnlyNoAudio => '仅电子书 - 无音频';

  @override
  String get absorbAudioNotDownloaded => '音频未下载';

  @override
  String get absorbAudioNotDownloadedEbookOnly => '音频未下载，仅电子书';

  @override
  String get fullyAbsorbed => '已完成';

  @override
  String get fullyAbsorbAction => '标记为已完成';

  @override
  String get removeFromAbsorbing => '从收听中移除';

  @override
  String get addToAbsorbing => '添加到收听中';

  @override
  String get absorbNext => 'Absorb 下一项';

  @override
  String get absorbNextAdded => '收听队列中的下一项';

  @override
  String get absorbLast => 'Absorb 最后一项';

  @override
  String get absorbNextHint => '紧接着当前播放内容';

  @override
  String get absorbLastHint => '在列表末尾';

  @override
  String get removedFromAbsorbing => '已从收听中移除';

  @override
  String get addedToAbsorbing => '已添加到收听中';

  @override
  String get removeFromContinueListening => '移出继续收听';

  @override
  String get removedFromContinueListening => '已从“继续收听”中移出';

  @override
  String get removeSeriesFromContinueSeries => '从“继续收听系列”移除';

  @override
  String get removedSeriesFromContinueSeries => '已从“继续收听系列”移除';

  @override
  String get couldNotUpdate => '无法更新，请重试';

  @override
  String get addToPlaylist => '添加到播放列表';

  @override
  String get addToCollection => '添加到收藏集';

  @override
  String get downloadEbook => '下载电子书';

  @override
  String get downloadEbookAgain => '重新下载电子书';

  @override
  String get resetProgress => '重置进度';

  @override
  String get lookupLocalMetadata => '查找本地元数据';

  @override
  String get reLookupLocalMetadata => '重新查找本地元数据';

  @override
  String get clearLocalMetadata => '清除本地元数据';

  @override
  String get searchOnGoodreads => '在 Goodreads 上搜索';

  @override
  String get editServerDetails => '编辑服务器详情';

  @override
  String get encodeTab => '编码';

  @override
  String get codec => '编解码器';

  @override
  String get bitrate => '码率';

  @override
  String get channels => '声道';

  @override
  String get mono => '单声道';

  @override
  String get stereo => '立体声';

  @override
  String get startM4bEncode => '开始 M4B 编码';

  @override
  String get encodeStarted => 'M4B 编码已开始';

  @override
  String get encodeFailed => '启动编码失败';

  @override
  String get encodeFinished => 'M4B 编码完成';

  @override
  String get currentlyLabel => '当前：';

  @override
  String encodeOutputPathNote(String path) {
    return '生成的 M4B 将放入你的有声书文件夹：$path/';
  }

  @override
  String encodeBackupNote(String itemId) {
    return '原始音频文件的备份将存放在：/metadata/cache/items/$itemId/。请定期清理项目缓存。';
  }

  @override
  String get encodeTimeNote => '编码可能需要长达 30 分钟。';

  @override
  String get encodeRescanNote => '如果已关闭文件监视，完成后需要重新扫描这本有声书。';

  @override
  String get aboutSection => '关于';

  @override
  String chaptersCount(int count) {
    return '章节 ($count)';
  }

  @override
  String audioTracksCount(int count) {
    return '音轨（$count）';
  }

  @override
  String libraryFilesCount(int count) {
    return '书库文件（$count）';
  }

  @override
  String get chapters => '章节';

  @override
  String get noChaptersBook => '此书没有章节';

  @override
  String get noChaptersPodcast => '此播客没有章节';

  @override
  String get failedToLoad => '加载失败';

  @override
  String startedDate(String date) {
    return '开始于 $date';
  }

  @override
  String finishedDate(String date) {
    return '完成于 $date';
  }

  @override
  String andCountMore(int count) {
    return '还有 $count 个';
  }

  @override
  String get markAsFullyAbsorbedQuestion => '标记为已完成？';

  @override
  String get markAsFullyAbsorbedContent => '这将把你的进度设置为100%，如果这本书正在播放则停止播放。';

  @override
  String get markedAsFinishedNiceWork => '已标记为完成 - 干得漂亮！';

  @override
  String get failedToUpdateCheckConnection => '更新失败 - 请检查您的网络连接';

  @override
  String get markAsNotFinishedQuestion => '标记为未完成？';

  @override
  String get markAsNotFinishedContent => '这将清除完成状态，但保留你当前的位置。';

  @override
  String get unmark => '取消标记';

  @override
  String get markedAsNotFinishedBackAtIt => '已标记为未完成 - 继续加油！';

  @override
  String get resetProgressQuestion => '重置进度？';

  @override
  String get resetProgressContent => '这将清除这本书的所有进度并将其重置到开头。此操作无法撤销。';

  @override
  String get progressResetFreshStart => '进度已重置 - 全新开始！';

  @override
  String get clearLocalMetadataQuestion => '清除本地元数据？';

  @override
  String get clearLocalMetadataContent => '这将删除本地存储的元数据并恢复为服务器上的内容。';

  @override
  String get localMetadataCleared => '本地元数据已清除';

  @override
  String get saveEbook => '保存电子书';

  @override
  String get noEbookFileFound => '未找到电子书文件';

  @override
  String get bookmark => '书签';

  @override
  String get bookmarks => '书签';

  @override
  String bookmarksWithCount(int count) {
    return '书签 ($count)';
  }

  @override
  String get playbackSpeed => '播放速度';

  @override
  String get noBookmarksYet => '暂无书签';

  @override
  String get longPressBookmarkHint => '长按书签按钮快速保存';

  @override
  String get addBookmark => '添加书签';

  @override
  String get editBookmark => '编辑书签';

  @override
  String get titleLabel => '标题';

  @override
  String get noteOptionalLabel => '备注（可选）';

  @override
  String get editLayout => '编辑布局';

  @override
  String get inMenu => '在菜单中';

  @override
  String get bookmarkAdded => '已添加书签';

  @override
  String get startPlayingSomethingFirst => '请先开始播放内容';

  @override
  String get playbackHistory => '播放历史';

  @override
  String get historyLocalTab => '历史';

  @override
  String get historyServerTab => '会话';

  @override
  String get historyNoServerSessions => '此项目暂无服务器会话';

  @override
  String get historyServerLoadFailed => '无法加载服务器会话';

  @override
  String get clearHistoryTooltip => '清除历史';

  @override
  String get tapEventToJump => '点击事件跳转到对应位置';

  @override
  String get noHistoryYet => '暂无历史';

  @override
  String jumpedToPosition(String position) {
    return '已跳转到 $position';
  }

  @override
  String booksInSeriesCount(int count) {
    return '本系列共 $count 本书';
  }

  @override
  String bookNumber(String number) {
    return '第 $number 本';
  }

  @override
  String downloadRemainingCount(int count) {
    return '剩余下载 ($count)';
  }

  @override
  String get downloadAll => '全部下载';

  @override
  String get markAllNotFinished => '全部标记为未完成';

  @override
  String get markAllFinished => '全部标记为已完成';

  @override
  String get markAllNotFinishedQuestion => '全部标记为未完成？';

  @override
  String get fullyAbsorbSeries => '将系列全部标记为已完成？';

  @override
  String get turnAutoDownloadOff => '关闭自动下载';

  @override
  String get turnAutoDownloadOn => '开启自动下载';

  @override
  String get autoDownloadThisSeries => '自动下载此系列？';

  @override
  String get autoDownloadSeriesContent => '边听边自动下载后续书籍。';

  @override
  String get standalone => '独立';

  @override
  String get episodes => '剧集';

  @override
  String get noEpisodesFound => '未找到剧集';

  @override
  String get markFinished => '标记为完成';

  @override
  String get markUnfinished => '标记为未完成';

  @override
  String get allEpisodes => '全部剧集';

  @override
  String get aboutThisEpisode => '关于本集';

  @override
  String get reversePlayOrder => '倒序播放';

  @override
  String selectedCount(int count) {
    return '已选择 $count 项';
  }

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get autoDownloadThisPodcast => '自动下载此播客？';

  @override
  String get autoDownloadPodcastContent => '边听边自动下载后续剧集。';

  @override
  String get download => '下载';

  @override
  String get deleteDownload => '删除下载';

  @override
  String get casting => '投屏';

  @override
  String get castingTo => '正在投屏到';

  @override
  String get editDetails => '编辑详情';

  @override
  String get quickMatch => '快速匹配';

  @override
  String get quickMatchNoUpdates => '无需更新';

  @override
  String get custom => '自定义';

  @override
  String get authorOptionalLabel => '作者（可选）';

  @override
  String get noResultsFound => '未找到结果。\n请调整搜索条件或提供商。';

  @override
  String get searchForMetadataAbove => '搜索上方的元数据';

  @override
  String get applyThisMatch => '应用此匹配？';

  @override
  String get metadataUpdated => '元数据已更新';

  @override
  String get failedToUpdateMetadata => '元数据更新失败';

  @override
  String get subtitleLabel => '副标题';

  @override
  String get authorLabel => '作者';

  @override
  String get narratorLabel => '朗读者';

  @override
  String get seriesLabel => '系列';

  @override
  String get addSeries => '添加系列';

  @override
  String get removeSeries => '移除系列';

  @override
  String get descriptionLabel => '描述';

  @override
  String get publisherLabel => '出版商';

  @override
  String get yearLabel => '年份';

  @override
  String get genresLabel => '分类';

  @override
  String get tagsLabel => '标签';

  @override
  String get commaSeparated => '逗号分隔';

  @override
  String get asinLabel => 'ASIN';

  @override
  String get isbnLabel => 'ISBN';

  @override
  String get coverImage => '封面图片';

  @override
  String get coverRemove => '移除封面';

  @override
  String get coverRemoveConfirm => '移除此书封面？将改为显示自动生成的标题卡片。';

  @override
  String get coverRemoved => '封面已移除';

  @override
  String get coverRemoveFailed => '无法移除封面';

  @override
  String get coverUrlLabel => '封面 URL';

  @override
  String get coverUrlHint => 'https://...';

  @override
  String get localMetadata => '本地元数据';

  @override
  String get overrideLocalDisplay => '覆盖本地显示';

  @override
  String get metadataSavedLocally => '元数据已本地保存';

  @override
  String get notes => '笔记';

  @override
  String get newNote => '新建笔记';

  @override
  String get editNote => '编辑笔记';

  @override
  String get noNotesYet => '暂无笔记';

  @override
  String get markdownIsSupported => '支持 Markdown';

  @override
  String get markdownMd => 'Markdown (.md)';

  @override
  String get keepsFormattingIntact => '保留完整格式';

  @override
  String get plainTextTxt => '纯文本 (.txt)';

  @override
  String get simpleTextNoFormatting => '简单文本，无格式';

  @override
  String get untitledNote => '无标题笔记';

  @override
  String get titleHint => '标题';

  @override
  String get noteBodyHint => '写下你的笔记...（支持 Markdown）';

  @override
  String get nothingToPreview => '暂无预览内容';

  @override
  String get audioEnhancements => '音频增强';

  @override
  String get presets => '预设';

  @override
  String get equalizer => '均衡器';

  @override
  String get effects => '效果';

  @override
  String get bassBoost => '低音增强';

  @override
  String get surround => '环绕声';

  @override
  String get loudness => '响度';

  @override
  String get monoAudio => '单声道音频';

  @override
  String get skipSilence => '跳过静音';

  @override
  String get resetAll => '全部重置';

  @override
  String get collectionNotFound => '未找到收藏集';

  @override
  String get deleteCollection => '删除收藏集';

  @override
  String get deleteCollectionContent => '你确定要删除此收藏集吗？';

  @override
  String get deleteCollectionFailed => '无法删除收藏';

  @override
  String get deletePermissionRequired => '需要删除权限。请让超级管理员授予你删除权限。';

  @override
  String get deleteFilesCheckbox => '同时删除服务器上的文件';

  @override
  String get deleteFilesCheckedHint => '文件将从服务器永久删除。';

  @override
  String get deleteFilesUncheckedHint => '文件会保留在服务器上，下次扫描书库时可能再次出现。';

  @override
  String get deleteFromServerAction => '从服务器删除';

  @override
  String get deleteFromServerTitle => '从服务器删除';

  @override
  String deleteFromServerContent(String title) {
    return '从 Audiobookshelf 删除《$title》？';
  }

  @override
  String deletedFromServer(String title) {
    return '已删除《$title》';
  }

  @override
  String get deleteFromServerFailed => '无法删除。请检查服务器日志。';

  @override
  String get playlistNotFound => '未找到播放列表';

  @override
  String get deletePlaylist => '删除播放列表';

  @override
  String get deletePlaylistContent => '你确定要删除此播放列表吗？';

  @override
  String get newPlaylist => '新建播放列表';

  @override
  String get playlistNameHint => '播放列表名称';

  @override
  String addedToName(String name) {
    return '已添加到 \"$name\"';
  }

  @override
  String get failedToAdd => '添加失败';

  @override
  String get newCollection => '新建收藏集';

  @override
  String get collectionNameHint => '收藏集名称';

  @override
  String get listsNewCollectionSubtitle => '把书籍归入你保存的列表';

  @override
  String get listsNewCollectionNeedsBookSubtitle => '至少先加入一本书';

  @override
  String get listsNewPlaylistSubtitle => '按顺序排列要听的书籍';

  @override
  String get listsAddBooksNow => '立即添加书籍';

  @override
  String get listsPickBooksNext => '接下来选择书籍。服务器上的收藏至少需要一本书。';

  @override
  String get listsCreate => '创建';

  @override
  String get listsCollectionNeedsBook => '收藏至少需要一本书，因此未创建。';

  @override
  String get listsCreateFailed => '无法创建';

  @override
  String get castToDevice => '投屏到设备';

  @override
  String get searchingForCastDevices => '正在搜索投屏设备...';

  @override
  String get castDevice => '投屏设备';

  @override
  String get stopCasting => '停止投屏';

  @override
  String get disconnect => '断开连接';

  @override
  String get audioOutput => '音频输出';

  @override
  String get noOutputDevicesFound => '未找到输出设备';

  @override
  String get welcomeToAbsorb => '欢迎使用 Absorb';

  @override
  String get welcomeTagline => '一个 Audiobookshelf 客户端。';

  @override
  String get welcomeAbsorbingTitle => '正在收听';

  @override
  String get welcomeAbsorbingIntro => '我们用 \"absorb\" 代替 \"播放\" 和 \"收听\"。';

  @override
  String get welcomeAbsorbingTabBullet => '正在收听标签页 - 你当前正在收听的内容';

  @override
  String get welcomeAbsorbButtonBullet => 'Absorb 按钮 - 开始播放';

  @override
  String get welcomeFullyAbsorbBullet => 'Fully Absorb - 标记为已完成';

  @override
  String get welcomeGettingAroundTitle => '界面操作';

  @override
  String get welcomeGettingAroundBody =>
      '点击任意封面打开详情。继续收听卡片不一样 - 点击立即播放，长按打开详情。';

  @override
  String get welcomeMakeItYoursTitle => '个性化设置';

  @override
  String get welcomeMakeItYoursBody =>
      '在设置中自定义 Absorb 以符合你的喜好。其中的「技巧与隐藏功能」区块值得一看。';

  @override
  String get getStarted => '开始使用';

  @override
  String get showMore => '显示更多';

  @override
  String get showLess => '显示更少';

  @override
  String get readMore => '阅读更多';

  @override
  String get removeDownloadQuestion => '移除下载？';

  @override
  String get removeDownloadContent => '这将从你的设备中移除。';

  @override
  String get downloadRemoved => '下载已移除';

  @override
  String get finished => '已完成';

  @override
  String get saved => '已保存';

  @override
  String get selectLibrary => '选择媒体库';

  @override
  String get switchLibraryTooltip => '切换媒体库';

  @override
  String get refreshTooltip => '刷新';

  @override
  String get noBooksFound => '未找到书籍';

  @override
  String get userFallback => '用户';

  @override
  String get rootAdmin => '超级管理员';

  @override
  String get admin => '管理员';

  @override
  String get serverAdmin => '服务器管理员';

  @override
  String get serverAdminSubtitle => '管理用户、媒体库和服务器设置';

  @override
  String serverUpdateAvailable(String version) {
    return '服务器有可用更新 $version';
  }

  @override
  String get justNow => '刚刚';

  @override
  String minutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String get audible => 'Audible';

  @override
  String get iTunes => 'iTunes';

  @override
  String get openLibrary => '打开媒体库';

  @override
  String get root => '超级管理员';

  @override
  String get coverPlayPause => '点击封面播放/暂停';

  @override
  String get coverPlayPauseOnSubtitle => '开启 - 点击封面播放/暂停';

  @override
  String get coverPlayPauseOffSubtitle => '关闭 - 使用控制栏中的播放/暂停按钮';

  @override
  String get cardBackground => '卡片背景';

  @override
  String get cardBackgroundBlurred => '模糊';

  @override
  String get cardBackgroundGradient => '渐变';

  @override
  String get queueModeMergedSubtitle => '可选择停止播放、手动队列，或自动播放下一项';

  @override
  String get queueModeSeriesLabel => '系列';

  @override
  String get queueModeShowLabel => '显示';

  @override
  String get queueModeInfoSeries => '系列';

  @override
  String get queueModeInfoSeriesDesc => '自动播放同系列的下一本书，或播客节目的下一集。';

  @override
  String get resetButtonGridQuestion => '确认重置按钮布局？';

  @override
  String get resetButtonGridContent => '这将恢复默认的按钮布局、顺序和开关设置。';

  @override
  String get reset => '重置';

  @override
  String get buttonGridReset => '按钮网格已重置';

  @override
  String get resetButtonGrid => '重置按钮布局';

  @override
  String get chapterBarrierOnRewind => '后退时的章节屏障';

  @override
  String get chapterBarrierInfoTitle => '章节屏障';

  @override
  String get chapterBarrierInfoContent =>
      '后退时会停在当前章节开头，而不会跨到上一章。\n\n在 2 秒内双击后退按钮可突破屏障。';

  @override
  String get chapterBarrierOnRewindOnSubtitle => '开启——后退停在章节开头';

  @override
  String get chapterBarrierOnRewindOffSubtitle => '关闭——后退可跨章节';

  @override
  String autoRewindOnSubtitleFormat(String min, String max) {
    return '开启——根据暂停时长后退 $min–$max 秒';
  }

  @override
  String get rewindOnSessionStart => '新会话开始时后退';

  @override
  String get rewindOnSessionStartInfoContent =>
      '普通自动后退只在同一会话内从暂停恢复时触发。此设置会在开始全新会话时（例如应用关闭、播放停止或重新打开应用后）额外后退。\n\n开启后，每次新会话开始时都会按最大后退量后退，便于重听上次的位置。';

  @override
  String rewindOnSessionStartOnSubtitle(String seconds) {
    return '开启——新会话开始时后退 $seconds 秒';
  }

  @override
  String rewindActivationDelayValue(String seconds) {
    return '$seconds 秒以上';
  }

  @override
  String rewindRangeValue(String min, String max) {
    return '$min 秒 – $max 秒';
  }

  @override
  String rewindSecondsPause(String seconds) {
    return '暂停 $seconds 秒';
  }

  @override
  String rewindMinPause(String minutes) {
    return '暂停 $minutes 分钟';
  }

  @override
  String rewindHrPause(String hours) {
    return '暂停 $hours 小时';
  }

  @override
  String get rewindOneHrPause => '暂停 1 小时';

  @override
  String speedValue(String speed) {
    return '${speed}x';
  }

  @override
  String secondsValue(String seconds) {
    return '$seconds 秒';
  }

  @override
  String minutesValue(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get chimeBeforeSleep => '睡前提示音';

  @override
  String get chimeBeforeSleepOnSubtitle => '在定时器即将结束时播放轻柔的提示铃声';

  @override
  String get chimeBeforeSleepOffSubtitle => '睡前无提示音';

  @override
  String get windDownDuration => '入睡模式时长';

  @override
  String windDownDurationSubtitle(int seconds) {
    return '定时结束$seconds 秒前开始淡出并提示';
  }

  @override
  String fadeVolumeOnSubtitleDynamic(int seconds) {
    return '在最后 $seconds 秒内逐渐降低音量';
  }

  @override
  String autoSleepTimerEnabledSubtitle(
    String start,
    String end,
    String duration,
  ) {
    return '$start – $end · $duration';
  }

  @override
  String get endOfChapterShort => '章节结束';

  @override
  String get endOfChapterOnSubtitle => '在当前章节结束时停止播放';

  @override
  String get endOfChapterOffSubtitle => '使用睡眠定时器';

  @override
  String get showExplicitBadge => '显示敏感内容标记';

  @override
  String get showExplicitBadgeOnSubtitle => '敏感内容会显示 “E” 标记';

  @override
  String get showExplicitBadgeOffSubtitle => '关闭 - 隐藏敏感内容标记';

  @override
  String get showEbookBadge => '显示电子书标记';

  @override
  String get showEbookBadgeOnSubtitle => '含电子书的书籍会在封面上显示图标';

  @override
  String get showEbookBadgeOffSubtitle => '关闭——隐藏电子书标记';

  @override
  String get libraryFallback => '书库';

  @override
  String get preReleaseUpdatesInfoTitle => '预发布更新';

  @override
  String get preReleaseUpdatesInfoContent =>
      '开启后，更新检查还会通知 GitHub 上的 alpha 和预发布版本。这些版本可能不够稳定，但包含最新功能与修复。';

  @override
  String get includePreReleases => '包含预发布版本';

  @override
  String get includePreReleasesOnSubtitle => '开启——检查 alpha 与预发布版本';

  @override
  String get includePreReleasesOffSubtitle => '关闭——仅检查稳定版';

  @override
  String get setTooltip => '设置';

  @override
  String get saveAbsorbBackup => '保存 Absorb 备份';

  @override
  String get checkForUpdate => '检查更新';

  @override
  String get onLatestVersion => '已是最新版本';

  @override
  String get updateAvailable => '有可用更新';

  @override
  String get preReleaseAvailable => '有可用预发布版';

  @override
  String updateDialogContent(String kind, String latest, String current) {
    return '有新的 Absorb $kind可用：$latest\n\n当前版本为 $current。';
  }

  @override
  String get updateKindPreRelease => '预发布版';

  @override
  String get updateKindVersion => '版本';

  @override
  String get downloadButton => '下载';

  @override
  String get updateDownloading => '正在下载更新…';

  @override
  String get updateInstallPermissionDenied =>
      '安装权限被拒绝。请在系统设置中为 Absorb 开启“安装未知应用”。';

  @override
  String get updateOpeningInBrowser => '应用内更新失败，正在打开浏览器';

  @override
  String get sendToEreader => '发送到电子阅读器';

  @override
  String sendingToEreader(String device) {
    return '正在发送到 $device…';
  }

  @override
  String sendToEreaderSuccess(String device) {
    return '已发送到 $device';
  }

  @override
  String get sendToEreaderFailed => '无法发送电子书';

  @override
  String get pickEreaderDevice => '选择设备';

  @override
  String get adminEmail => '邮件';

  @override
  String get adminEmailSubtitle => 'SMTP 与电子阅读器设备';

  @override
  String get smtpSection => 'SMTP';

  @override
  String get smtpSetupGuide => '设置指南';

  @override
  String get smtpHost => '主机';

  @override
  String get smtpPort => '端口';

  @override
  String get smtpSecure => '加密';

  @override
  String get smtpRejectUnauthorized => '拒绝未授权的 TLS';

  @override
  String get smtpUser => '用户名';

  @override
  String get smtpPass => '密码';

  @override
  String get smtpFromAddress => '发件地址';

  @override
  String get smtpTestAddress => '测试地址';

  @override
  String get smtpSendTest => '发送测试';

  @override
  String get smtpSaveSettings => '保存';

  @override
  String get smtpSaved => '邮件设置已保存';

  @override
  String get smtpSaveFailed => '无法保存邮件设置';

  @override
  String get smtpTestSent => '测试邮件已发送';

  @override
  String get smtpTestFailed => '测试邮件发送失败';

  @override
  String get ereaderDevicesTitle => '电子阅读器设备';

  @override
  String get ereaderDevicesEmpty => '暂无设备。请在下方添加。';

  @override
  String get addEreaderDevice => '添加设备';

  @override
  String get editEreaderDevice => '编辑设备';

  @override
  String get deleteEreaderDevice => '删除';

  @override
  String get ereaderDeviceName => '名称';

  @override
  String get ereaderDeviceEmail => '邮件';

  @override
  String get ereaderAvailability => '谁可以使用此设备';

  @override
  String get ereaderAvailAdminOrUp => '仅管理员';

  @override
  String get ereaderAvailUserOrUp => '所有用户';

  @override
  String get ereaderAvailGuestOrUp => '所有人';

  @override
  String get ereaderAvailSpecificUsers => '指定用户';

  @override
  String ereaderSpecificUsersN(int count) {
    return '指定用户（$count）';
  }

  @override
  String get ereaderDevicesSaved => '设备已保存';

  @override
  String get ereaderDevicesSaveFailed => '无法保存设备';

  @override
  String libraryCountOne(int count) {
    return '$count 个书库';
  }

  @override
  String libraryCountOther(int count) {
    return '$count 个书库';
  }

  @override
  String serverVersionLabel(String version) {
    return '服务器 $version';
  }

  @override
  String appVersionServerSuffix(String version) {
    return ' · 服务器 $version';
  }

  @override
  String backupDateFormat(int month, int day, int year) {
    return '$year/$month/$day';
  }

  @override
  String get backupDetailsSeparator => ' ·';

  @override
  String get bookmarksSortedByPositionReversed => '按位置排序（倒序）';

  @override
  String bookmarksJumpShortContent(String title, String position) {
    return '《$title》位于 $position';
  }

  @override
  String get deleteBookmarkQuestion => '删除书签？';

  @override
  String get cardIconsOnlyChip => '仅图标';

  @override
  String get cardMoreInGridChip => '更多';

  @override
  String get cardLayoutHidden => '已隐藏';

  @override
  String get speed => '速度';

  @override
  String get details => '详情';

  @override
  String get episodeDetailsLabel => '单集详情';

  @override
  String get bookDetailsLabel => '书籍详情';

  @override
  String get equalizerShort => '均衡器';

  @override
  String get equalizerLabel => '音频增强';

  @override
  String get cast => '投屏';

  @override
  String castingToDevice(String device) {
    return '正在投屏到 $device';
  }

  @override
  String castToDeviceNamed(String device) {
    return '投屏到 $device';
  }

  @override
  String get historyShort => '历史';

  @override
  String atPosition(String position) {
    return '位于 $position';
  }

  @override
  String chaptersChip(int count) {
    return '$count 个章节';
  }

  @override
  String chapterNumber(int number) {
    return '第 $number 章';
  }

  @override
  String kbpsValue(int value) {
    return '$value kbps';
  }

  @override
  String get resetMayNotHaveSynced => '重置可能未同步——请检查服务器';

  @override
  String failedToDownloadEbook(int code) {
    return '下载电子书失败（$code）';
  }

  @override
  String get serverReturnedErrorPage => '服务器返回了错误页面，而不是电子书文件';

  @override
  String ebookSaved(String filename) {
    return '已保存：$filename';
  }

  @override
  String errorSavingEbook(String error) {
    return '保存电子书出错：$error';
  }

  @override
  String failedToSaveError(String error) {
    return '保存失败：$error';
  }

  @override
  String get adminBackupsLabel => '备份';

  @override
  String get adminListeningNow => '正在收听';

  @override
  String get adminLibraries => '书库';

  @override
  String get adminLibraryShows => '播客';

  @override
  String get adminLibraryBooks => '书籍';

  @override
  String get adminLibraryFolders => '文件夹';

  @override
  String get adminLibrarySize => '大小';

  @override
  String get adminLibraryDuration => '时长';

  @override
  String adminLibraryIssues(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个缺失或无效项目',
      one: '1 个缺失或无效项目',
    );
    return '$_temp0';
  }

  @override
  String get adminLibraryReview => '查看';

  @override
  String get adminMissingTitle => '缺失项目';

  @override
  String adminMissingSubtitle(String library) {
    return '$library 中文件缺失或无法读取的条目';
  }

  @override
  String get adminMissingNone => '没有缺失或无效的项目';

  @override
  String get adminMissingBadge => '缺失';

  @override
  String get adminInvalidBadge => '无效';

  @override
  String get adminMissingDeleteTitle => '移除条目';

  @override
  String adminMissingDeleteOneContent(String title) {
    return '从 Audiobookshelf 移除《$title》？';
  }

  @override
  String adminMissingDeleteManyContent(int count) {
    return '从 Audiobookshelf 移除 $count 个条目？';
  }

  @override
  String adminMissingDeleteCount(int count) {
    return '删除 $count';
  }

  @override
  String adminMissingRemovedOne(String title) {
    return '已移除 $title';
  }

  @override
  String adminMissingRemovedMany(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已移除 $count 个条目',
      one: '已移除 1 个条目',
    );
    return '$_temp0';
  }

  @override
  String get adminMissingDeleteFailed => '删除条目失败';

  @override
  String get adminMatchAction => '匹配';

  @override
  String adminMatchingStarted(String name) {
    return '已开始为 $name 匹配';
  }

  @override
  String get adminMatchFailed => '失败';

  @override
  String adminScanFailed(String name) {
    return '扫描 $name 失败';
  }

  @override
  String get adminPurgeCacheFailed => '失败';

  @override
  String get adminUsersRootBadge => '超级管理员';

  @override
  String get adminUsersAdminBadge => '管理员';

  @override
  String get adminUsersDisabledBadge => '已禁用';

  @override
  String get adminUsersEditUserTooltip => '编辑用户';

  @override
  String get adminUsersOnlineNow => '当前在线';

  @override
  String adminUsersLastSeen(String time) {
    return '最近在线 $time';
  }

  @override
  String get adminUsersNever => '从未';

  @override
  String get adminUsersTotal => '总计';

  @override
  String get adminUsersNoReadingActivity => '暂无收听活动';

  @override
  String get adminUsersLoadingDots => '正在加载…';

  @override
  String get adminUsersLoadMoreSessions => '加载更多会话';

  @override
  String get adminUsersNoRecentSessions => '暂无最近会话';

  @override
  String get adminUsersLibraryProgress => '书库进度';

  @override
  String adminUsersLoadMoreRemaining(int count) {
    return '加载更多（剩余 $count）';
  }

  @override
  String adminUsersMonthsAgo(int count) {
    return '$count 个月前';
  }

  @override
  String get adminUsersNewUser => '新建用户';

  @override
  String get adminUsersEditUser => '编辑用户';

  @override
  String get adminUsersUsername => '用户名';

  @override
  String get adminUsersEnterUsername => '输入用户名';

  @override
  String get adminUsersPassword => '密码';

  @override
  String get adminUsersNewPassword => '新密码';

  @override
  String get adminUsersEnterPassword => '输入密码';

  @override
  String get adminUsersLeaveBlankToKeep => '留空则保持当前密码';

  @override
  String get adminUsersAccountType => '账户类型';

  @override
  String get adminUsersTypeGuest => '访客';

  @override
  String get adminUsersTypeUser => '用户';

  @override
  String get adminUsersTypeAdmin => '管理员';

  @override
  String get adminUsersStatus => '状态';

  @override
  String get adminUsersAccountActive => '账户启用';

  @override
  String get adminUsersAccountActiveSub => '禁用的账户无法登录';

  @override
  String get adminUsersLocked => '已锁定';

  @override
  String get adminUsersLockedSub => '阻止修改密码';

  @override
  String get adminUsersPermissions => '权限';

  @override
  String get adminUsersPermDownload => '下载';

  @override
  String get adminUsersPermUpdate => '更新';

  @override
  String get adminUsersPermUpdateSub => '编辑元数据与书库项目';

  @override
  String get adminUsersPermDelete => '删除';

  @override
  String get adminUsersPermUpload => '上传';

  @override
  String get adminUsersPermExplicit => '露骨内容';

  @override
  String get adminUsersLibraryAccess => '书库访问权限';

  @override
  String get adminUsersAccessAllLibraries => '可访问所有书库';

  @override
  String get adminUsersCreateUser => '创建用户';

  @override
  String get adminUsersSaveChanges => '保存更改';

  @override
  String get adminUsersUsernameRequired => '用户名为必填项';

  @override
  String get adminUsersPasswordRequired => '密码为必填项';

  @override
  String get adminUsersUserCreated => '用户已创建';

  @override
  String get adminUsersUserUpdated => '用户已更新';

  @override
  String get adminUsersFailedCreate => '创建用户失败';

  @override
  String get adminUsersFailedUpdate => '更新用户失败';

  @override
  String get adminUsersThisUser => '该用户';

  @override
  String get adminUsersDeleteUserTitle => '删除用户？';

  @override
  String adminUsersDeleteUserContent(String name) {
    return '永久删除 $name？';
  }

  @override
  String adminUsersUserDeleted(String name) {
    return '已删除 $name';
  }

  @override
  String get adminUsersFailedDelete => '删除用户失败';

  @override
  String get adminUsersUnlinkOpenId => '解除 OpenID 关联';

  @override
  String get adminUsersUnlinkOpenIdTitle => '解除 OpenID 关联？';

  @override
  String adminUsersUnlinkOpenIdContent(String name) {
    return '移除 $name 的 OpenID 关联？对方需要重新使用 OpenID 登录才能再次关联。';
  }

  @override
  String get adminUsersOpenIdUnlinked => 'OpenID 已解除关联';

  @override
  String get adminUsersFailedUnlinkOpenId => '解除 OpenID 关联失败';

  @override
  String adminUsersByAuthor(String author) {
    return '作者：$author';
  }

  @override
  String get adminUsersListened => '已收听';

  @override
  String get adminUsersStartedAtPosition => '起始位置';

  @override
  String get adminUsersEndedAtPosition => '结束位置';

  @override
  String get adminUsersTotalDuration => '总时长';

  @override
  String get adminUsersStarted => '开始时间';

  @override
  String get adminUsersUpdated => '更新时间';

  @override
  String get adminUsersClient => '客户端';

  @override
  String get adminUsersDevice => '设备';

  @override
  String get adminUsersOs => '系统';

  @override
  String get adminUsersPlayMethod => '播放方式';

  @override
  String get adminUsersPlayDirect => '直连播放';

  @override
  String get adminUsersPlayDirectStream => '直接串流';

  @override
  String get adminUsersPlayTranscode => '转码';

  @override
  String get adminUsersPlayLocal => '本地';

  @override
  String get adminPodcastsCheckNewEpisodesTitle => '检查新单集';

  @override
  String get adminPodcastsCheckNewEpisodesContent =>
      '将检查所有播客的 RSS 源，并下载发现的新单集（如已启用自动下载）。';

  @override
  String get adminPodcastsCheckNewEpisodesSubtitle => '扫描 RSS 源并下载新单集';

  @override
  String get adminPodcastsCheck => '检查';

  @override
  String get adminPodcastsCheckingForNew => '正在检查新单集…';

  @override
  String get adminPodcastsCheckingForNewDots => '正在检查新单集…';

  @override
  String get adminPodcastsFailedCheckEpisodes => '检查单集失败';

  @override
  String get adminPodcastsCheckFeedsTooltip => '检查源中的新单集';

  @override
  String get adminPodcastsNoPodcastsYet => '暂无播客';

  @override
  String get adminPodcastsTapPlusHint => '点击 + 搜索并添加节目';

  @override
  String adminPodcastsEpisodesCount(int count) {
    return '$count 个单集';
  }

  @override
  String get adminPodcastsAddPodcast => '添加播客';

  @override
  String get adminPodcastsCouldNotFindFeed => '找不到播客源';

  @override
  String get adminPodcastsSearchHint => '搜索播客…';

  @override
  String get adminPodcastsSearchItunesHint => '搜索 iTunes…';

  @override
  String adminPodcastsSearchItunesFor(String query) {
    return '在 iTunes 中搜索“$query”';
  }

  @override
  String get adminPodcastsNoPodcastsFound => '未找到播客';

  @override
  String get adminPodcastsRelToday => '今天';

  @override
  String adminPodcastsWeeksAgo(int count) {
    return '$count 周前';
  }

  @override
  String adminPodcastsMonthsAgo(int count) {
    return '$count 个月前';
  }

  @override
  String adminPodcastsYearsAgo(int count) {
    return '$count 年前';
  }

  @override
  String adminPodcastsUpdated(String when) {
    return '更新于 $when';
  }

  @override
  String get adminPodcastsGenreAll => '全部';

  @override
  String get adminPodcastsGenreArts => '艺术';

  @override
  String get adminPodcastsGenreComedy => '喜剧';

  @override
  String get adminPodcastsGenreEducation => '教育';

  @override
  String get adminPodcastsGenreTvFilm => '影视';

  @override
  String get adminPodcastsGenreMusic => '音乐';

  @override
  String get adminPodcastsGenreNews => '新闻';

  @override
  String get adminPodcastsGenreReligion => '宗教';

  @override
  String get adminPodcastsGenreScience => '科学';

  @override
  String get adminPodcastsGenreSports => '体育';

  @override
  String get adminPodcastsGenreTechnology => '科技';

  @override
  String get adminPodcastsGenreBusiness => '商业';

  @override
  String get adminPodcastsGenreFiction => '小说';

  @override
  String get adminPodcastsGenreSocietyCulture => '社会与文化';

  @override
  String get adminPodcastsGenreHealthFitness => '健康与健身';

  @override
  String get adminPodcastsGenreTrueCrime => '真实犯罪';

  @override
  String get adminPodcastsGenreHistory => '历史';

  @override
  String get adminPodcastsGenreKidsFamily => '儿童与家庭';

  @override
  String get adminPodcastsPodcastFallback => '播客';

  @override
  String get adminPodcastsEpisodeFallback => '单集';

  @override
  String get adminPodcastsNoFeedFound => '未找到源地址';

  @override
  String get adminPodcastsNoFeedAvailable => '没有可用的源地址';

  @override
  String adminPodcastsAddedToLibrary(String title) {
    return '$title 已添加到书库';
  }

  @override
  String adminPodcastsFailedToAdd(String title) {
    return '添加 $title 失败';
  }

  @override
  String adminPodcastsEpisodesInFeed(int count) {
    return '源中有 $count 个单集';
  }

  @override
  String adminPodcastsMoreEpisodes(int count) {
    return '+ 另外 $count 个单集';
  }

  @override
  String get adminPodcastsAdding => '正在添加…';

  @override
  String get adminPodcastsAddToLibrary => '添加到书库';

  @override
  String get adminPodcastsRemoveShowTitle => '移除节目？';

  @override
  String adminPodcastsRemoveShowContent(String title) {
    return '从服务器移除《$title》及其所有单集？此操作无法撤销。';
  }

  @override
  String adminPodcastsRemovedShow(String title) {
    return '已移除《$title》';
  }

  @override
  String get adminPodcastsFailedRemoveShow => '移除节目失败';

  @override
  String get adminPodcastsRemoveShowTooltip => '移除节目';

  @override
  String get adminPodcastsSelectMultipleTooltip => '多选';

  @override
  String adminPodcastsDownloadedCount(int count) {
    return '已下载 $count 个';
  }

  @override
  String get adminPodcastsTabDownloaded => '已下载';

  @override
  String get adminPodcastsTabFeed => '源';

  @override
  String get adminPodcastsTabSettings => '设置';

  @override
  String adminPodcastsDownloadingEpisode(String title) {
    return '正在下载《$title》';
  }

  @override
  String get adminPodcastsFailedDownload => '下载失败';

  @override
  String get adminPodcastsDeleteEpisodeTitle => '删除单集？';

  @override
  String adminPodcastsDeleteEpisodeContent(String title) {
    return '删除《$title》？';
  }

  @override
  String get adminPodcastsDeleted => '已删除';

  @override
  String get adminPodcastsFailed => '失败';

  @override
  String get adminPodcastsDeleteEpisodesTitle => '删除单集？';

  @override
  String adminPodcastsDeleteEpisodesContent(int count) {
    return '从服务器删除 $count 个单集？';
  }

  @override
  String adminPodcastsDeletedEpisodes(int count) {
    return '已删除 $count 个单集';
  }

  @override
  String get adminPodcastsBrowseFeedToDownload => '浏览源以选择下载';

  @override
  String get adminPodcastsDownloadingDots => '正在下载…';

  @override
  String adminPodcastsDeleteEpisodesCount(int count) {
    return '删除 $count 个单集';
  }

  @override
  String adminPodcastsDownloadingCount(int count) {
    return '正在下载 $count 个单集';
  }

  @override
  String adminPodcastsDownloadEpisodesCount(int count) {
    return '下载 $count 个单集';
  }

  @override
  String get adminPodcastsLookForEpisodesAfter => '查找此日期之后的单集';

  @override
  String get adminPodcastsSelectDate => '选择日期';

  @override
  String get adminPodcastsMaxEpisodes => '最多下载单集数';

  @override
  String adminPodcastsNoNewEpisodesAfter(String date) {
    return '$date 之后未发现新单集';
  }

  @override
  String adminPodcastsFoundNewEpisodes(int count) {
    return '发现 $count 个新单集——正在下载';
  }

  @override
  String get adminPodcastsFailedToCheckNew => '检查新单集失败';

  @override
  String get adminPodcastsCheckAndDownload => '检查并下载';

  @override
  String get adminPodcastsMatchPodcast => '匹配播客';

  @override
  String get adminPodcastsMatchPodcastSubtitle => '在 iTunes 中搜索以更新封面和元数据';

  @override
  String get adminPodcastsAutoDownloadNewEpisodes => '自动下载新单集';

  @override
  String get adminPodcastsAutoDownloadOnSubtitle => '服务器自动下载新单集';

  @override
  String get adminPodcastsAutoDownloadOffSubtitle => '新单集不会自动下载';

  @override
  String get adminPodcastsFailedAutoDownloadUpdate => '更新自动下载设置失败';

  @override
  String get adminPodcastsMaxEpisodesToKeep => '最多保留单集数';

  @override
  String get adminPodcastsMaxEpisodesToKeepHelp =>
      '0 表示保留所有单集。自动下载新单集后，若节目超过此上限，Audiobookshelf 会移除最旧的单集。';

  @override
  String get adminPodcastsNoEpisodeLimit => '不限制';

  @override
  String get adminPodcastsEpisodeLimitInvalid => '请输入 0 或整数';

  @override
  String get adminPodcastsCheckSchedule => '检查计划';

  @override
  String get adminPodcastsFrequency => '频率';

  @override
  String get adminPodcastsFreqHourly => '每小时';

  @override
  String get adminPodcastsFreqDaily => '每天';

  @override
  String get adminPodcastsFreqWeekly => '每周';

  @override
  String get adminPodcastsDay => '星期';

  @override
  String get adminPodcastsTime => '时间';

  @override
  String get adminPodcastsDaySun => '周日';

  @override
  String get adminPodcastsDayMon => '周一';

  @override
  String get adminPodcastsDayTue => '周二';

  @override
  String get adminPodcastsDayWed => '周三';

  @override
  String get adminPodcastsDayThu => '周四';

  @override
  String get adminPodcastsDayFri => '周五';

  @override
  String get adminPodcastsDaySat => '周六';

  @override
  String get adminPodcastsFeedUrl => '源地址';

  @override
  String get adminPodcastsBack => '返回';

  @override
  String get adminPodcastsRootOnly => '仅超级管理员';

  @override
  String get adminPodcastsDeleting => '正在删除…';

  @override
  String get adminPodcastsDeleteEpisode => '删除单集';

  @override
  String adminPodcastsSeasonChip(String season) {
    return '第 $season 季';
  }

  @override
  String adminPodcastsEpChip(String number) {
    return '第 $number 集';
  }

  @override
  String get adminPodcastsApplyingMatch => '正在应用匹配…';

  @override
  String get adminPodcastsNoResults => '无结果';

  @override
  String get adminPodcastsPodcastMatched => '播客已匹配并更新';

  @override
  String get adminPodcastsFailedMatch => '播客匹配失败';

  @override
  String get adminPodcastsSelectAll => '全选';

  @override
  String get adminPodcastsSelectAllNew => '仅新增';

  @override
  String get adminPodcastsSortNewestFirst => '最新优先';

  @override
  String get adminPodcastsSortOldestFirst => '最旧优先';

  @override
  String get adminPodcastsEditInfo => '编辑信息';

  @override
  String get adminPodcastsEditInfoSubtitle => '修改标题、简介、封面等';

  @override
  String get adminPodcastsEditTitle => '编辑播客';

  @override
  String get adminPodcastsReleaseDate => '发布日期';

  @override
  String get adminPodcastsExplicit => '露骨内容';

  @override
  String get adminPodcastsExplicitSubtitle => '将此播客标记为露骨内容';

  @override
  String get episodeListEpisodeFallback => '单集';

  @override
  String get episodeListUnknownPodcast => '未知播客';

  @override
  String episodeListMarkedFinished(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个单集已标记为听完',
      one: '1 个单集已标记为听完',
    );
    return '$_temp0';
  }

  @override
  String episodeListMarkedUnfinished(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个单集已标记为未听完',
      one: '1 个单集已标记为未听完',
    );
    return '$_temp0';
  }

  @override
  String get episodeListUnsubscribeFromNewEpisodes => '取消订阅新单集';

  @override
  String get episodeListSubscribeToNewEpisodes => '订阅新单集';

  @override
  String get episodeListSubscribeTitle => '订阅此播客？';

  @override
  String get episodeListSubscribeContent => '新单集出现在服务器上时，会自动下载并加入你的收听队列。';

  @override
  String get episodeListSubscribe => '订阅';

  @override
  String get episodeListShowFinishedEpisodes => '显示已听完单集';

  @override
  String get episodeListHideFinishedEpisodes => '隐藏已听完单集';

  @override
  String get episodeListShowSettings => '显示设置';

  @override
  String get episodeListPlaysNewerToOlder => '从新到旧播放';

  @override
  String get episodeListPlaysOlderToNewer => '从旧到新播放';

  @override
  String episodeListEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个单集',
      one: '1 个单集',
    );
    return '$_temp0';
  }

  @override
  String episodeListUnfinishedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个未听完',
      one: '1 个未听完',
    );
    return '$_temp0';
  }

  @override
  String get episodeListAutoDownloadChip => '自动下载';

  @override
  String get episodeListSubscribedChip => '已订阅';

  @override
  String get episodeListExplicitChip => '露骨内容';

  @override
  String get episodeListSortNewest => '最新';

  @override
  String get episodeListSortOldest => '最旧';

  @override
  String get episodeListSortBy => '单集排序';

  @override
  String get episodeListSortPubDate => '发布日期';

  @override
  String get episodeListSortTitle => '标题';

  @override
  String get episodeListSortSeason => '季';

  @override
  String get episodeListSortEpisode => '单集序号';

  @override
  String get episodeListSortFileName => '文件名';

  @override
  String get episodeListSortReverseHint => '再次点击可反转顺序';

  @override
  String episodeListAddedToAbsorbing(String title) {
    return '已将《$title》加入收听队列';
  }

  @override
  String get episodeDetailEpisodeFallback => '单集';

  @override
  String get episodeDetailMarkedNotFinished => '已标记为未听完';

  @override
  String get episodeDetailMarkedFinishedNice => '已标记为听完——不错！';

  @override
  String get episodeDetailMarkAbsorbedContent => '这会把此单集的进度设为 100%。';

  @override
  String get episodeDetailResetProgressContent => '这会清除此单集的所有进度并回到开头，且无法撤销。';

  @override
  String get episodeDetailToday => '今天';

  @override
  String get episodeDetailYesterday => '昨天';

  @override
  String episodeDetailDaysAgo(int count) {
    return '$count 天前';
  }

  @override
  String episodeDetailWeeksAgo(int count) {
    return '$count 周前';
  }

  @override
  String episodeDetailDurationHm(int hours, int minutes) {
    return '$hours 小时 $minutes 分';
  }

  @override
  String episodeDetailDurationM(int minutes) {
    return '$minutes 分';
  }

  @override
  String get episodeDetailResume => '继续播放';

  @override
  String get episodeDetailPlayEpisode => '播放单集';

  @override
  String episodeDetailEpisodeNumber(String number) {
    return '第 $number 集';
  }

  @override
  String episodeDetailSeasonNumber(String number) {
    return '第 $number 季';
  }

  @override
  String get editMetadataUpdatedFromMatch => '元数据已按匹配结果更新';

  @override
  String editMetadataConfirmMatch(String title) {
    return '这将使用以下内容更新此书的服务器元数据：\n\n“$title”\n\n所有字段和封面都会在服务器上被覆盖。';
  }

  @override
  String editMetadataConfirmMatchWithAuthor(String title, String author) {
    return '这将使用以下内容更新此书的服务器元数据：\n\n$author 的《$title》\n\n所有字段和封面都会在服务器上被覆盖。';
  }

  @override
  String get seriesBooksFindMissingTitle => '扫描缺失书籍';

  @override
  String get seriesBooksFindMissingContent =>
      '此功能将检索 Audible以查找该系列中你的媒体库可能缺失的书籍。\n\n系统会优先通过 ASIN 进行匹配（取决于你的服务器中书籍是否包含 ASIN），若无则通过书名进行匹配。搜索结果可能不会完全准确。';

  @override
  String get seriesBooksCouldNotFindOnAudible => '在 Audible 上找不到此系列';

  @override
  String seriesBooksMarkAllNotFinishedContent(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '这会清除此系列中全部 $count 本书的听完状态。',
      one: '这会清除此系列中 1 本书的听完状态。',
    );
    return '$_temp0';
  }

  @override
  String seriesBooksFullyAbsorbContent(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '这会把此系列中全部 $count 本书标记为听完。',
      one: '这会把此系列中的 1 本书标记为听完。',
    );
    return '$_temp0';
  }

  @override
  String get seriesBooksUnmarkAll => '全部取消标记';

  @override
  String get seriesBooksShowAllBooks => '显示所有书籍';

  @override
  String get seriesBooksGroupBySubSeries => '按子系列分组';

  @override
  String get seriesBooksLoadingSubSeries => '正在加载子系列…';

  @override
  String seriesBooksBookCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本书',
      one: '1 本书',
    );
    return '$_temp0';
  }

  @override
  String get seriesBooksDone => '完成';

  @override
  String get seriesBooksExplicitBadge => 'E';

  @override
  String get expandedCardStreaming => '串流播放';

  @override
  String get expandedCardDeviceFallback => '设备';

  @override
  String bookmarksScreenPositionInBook(String position, String bookTitle) {
    return '《$bookTitle》中的 $position';
  }

  @override
  String get bookmarksScreenClose => '关闭';

  @override
  String get bookmarksScreenSortNewest => '最新';

  @override
  String get bookmarksScreenSortPosition => '位置';

  @override
  String statsScreenStreakDays(int count) {
    return '$count 天';
  }

  @override
  String statsScreenSessionCountOne(int count) {
    return '$count 次收听';
  }

  @override
  String statsScreenSessionCountOther(int count) {
    return '$count 次收听';
  }

  @override
  String get statsScreenDayMon => '周一';

  @override
  String get statsScreenDayTue => '周二';

  @override
  String get statsScreenDayWed => '周三';

  @override
  String get statsScreenDayThu => '周四';

  @override
  String get statsScreenDayFri => '周五';

  @override
  String get statsScreenDaySat => '周六';

  @override
  String get statsScreenDaySun => '周日';

  @override
  String statsScreenDurationHm(int h, int m) {
    return '$h 小时 $m 分';
  }

  @override
  String statsScreenDurationM(int m) {
    return '$m 分';
  }

  @override
  String get statsScreenDurationLessThanMin => '<1 分';

  @override
  String get statsScreenDurationZero => '0 分';

  @override
  String statsScreenDurationShortH(int h) {
    return '$h 小时';
  }

  @override
  String statsScreenDurationShortM(int m) {
    return '$m 分';
  }

  @override
  String get statsScreenCouldNotLoadItem => '无法加载项目';

  @override
  String get statsScreenCouldNotFindEpisode => '找不到单集';

  @override
  String statsScreenByAuthor(String author) {
    return '作者：$author';
  }

  @override
  String get statsScreenListened => '已收听';

  @override
  String get sessionEditTitle => '编辑会话';

  @override
  String get sessionDayLabel => '星期';

  @override
  String get sessionEndPosition => '结束位置';

  @override
  String get sessionEndPositionHint => '修改此项可能同时更新你当前的进度。';

  @override
  String get statsViewSessions => '查看会话';

  @override
  String statsSessionsForDate(String date) {
    return '$date 的会话';
  }

  @override
  String get statsNoSessionsForDate => '这一天没有收听记录';

  @override
  String get statsSearchSessions => '搜索会话';

  @override
  String get statsNoSessionSearchResults => '没有匹配的会话';

  @override
  String get statsSessionsLoadFailed => '无法加载这一天的会话';

  @override
  String get sessionDeleteConfirmTitle => '删除会话？';

  @override
  String get sessionDeleteConfirmBody => '这会移除该会话，并从收听总时长中扣除相应时间。此操作无法撤销。';

  @override
  String get sessionSaved => '会话已更新';

  @override
  String get sessionDeleted => '会话已删除';

  @override
  String get sessionSaveFailed => '无法保存更改';

  @override
  String get sessionDeleteFailed => '无法删除该会话';

  @override
  String get statsScreenStartedAtPosition => '起始位置';

  @override
  String get statsScreenEndedAtPosition => '结束位置';

  @override
  String get statsScreenTotalDuration => '总时长';

  @override
  String get statsScreenStarted => '开始时间';

  @override
  String get statsScreenUpdated => '更新时间';

  @override
  String get statsScreenClient => '客户端';

  @override
  String get statsScreenDevice => '设备';

  @override
  String get statsScreenOs => '系统';

  @override
  String get statsScreenPlayMethod => '播放方式';

  @override
  String get statsScreenLoading => '正在加载…';

  @override
  String get statsScreenJumpToStart => '跳到开头';

  @override
  String get statsScreenJumpToEnd => '跳到结尾';

  @override
  String get statsScreenPlayMethodDirect => '直连播放';

  @override
  String get statsScreenPlayMethodDirectStream => '直接串流';

  @override
  String get statsScreenPlayMethodTranscode => '转码';

  @override
  String get statsScreenPlayMethodLocal => '本地';

  @override
  String get statsScreenAmLabel => '上午';

  @override
  String get statsScreenPmLabel => '下午';

  @override
  String statsScreenDateAtTime(
    String month,
    int day,
    int year,
    int hour,
    String minute,
    String ampm,
  ) {
    return '$year年$month月$day日 $hour:$minute $ampm';
  }

  @override
  String get statsScreenMonthJan => '1月';

  @override
  String get statsScreenMonthFeb => '2月';

  @override
  String get statsScreenMonthMar => '3月';

  @override
  String get statsScreenMonthApr => '4月';

  @override
  String get statsScreenMonthMay => '5月';

  @override
  String get statsScreenMonthJun => '6月';

  @override
  String get statsScreenMonthJul => '7月';

  @override
  String get statsScreenMonthAug => '8月';

  @override
  String get statsScreenMonthSep => '9月';

  @override
  String get statsScreenMonthOct => '10月';

  @override
  String get statsScreenMonthNov => '11月';

  @override
  String get statsScreenMonthDec => '12月';

  @override
  String get upcomingReleasesTitle => '即将上架';

  @override
  String get upcomingReleasesRescanTitle => '重新扫描？';

  @override
  String upcomingReleasesRescanContent(int days) {
    return '这些结果是 $days 天前获取的。发布日期可能已发生变更——是否需要重新扫描？';
  }

  @override
  String get upcomingReleasesNotNow => '稍后再说';

  @override
  String get upcomingReleasesRescan => '重新扫描';

  @override
  String get upcomingReleasesRescanReleaseDate => '重新扫描发布日期';

  @override
  String get upcomingReleasesRescanning => '正在重新扫描...';

  @override
  String upcomingReleasesUpdatedWithDate(String date) {
    return '更新于 $date';
  }

  @override
  String get upcomingReleasesNoReleaseDateFound => '未找到发布日期';

  @override
  String get upcomingReleasesRescanFailed => '重新扫描失败';

  @override
  String get upcomingReleasesRemoveFromList => '从列表移除';

  @override
  String get upcomingReleasesRemovedFromList => '已从列表移除';

  @override
  String get upcomingReleasesDateChip => '发布日期';

  @override
  String upcomingReleasesCheckingSeries(String name, int processed, int total) {
    return '正在获取 $name... ($processed/$total)';
  }

  @override
  String get upcomingReleasesLoadingSeries => '系列加载中...';

  @override
  String get upcomingReleasesScannedToday => '(今天已扫描)';

  @override
  String get upcomingReleasesScannedYesterday => '(昨天已扫描)';

  @override
  String upcomingReleasesScannedDaysAgo(int days) {
    return '(扫描于 $days 天前)';
  }

  @override
  String upcomingReleasesUpcomingCount(int count) {
    return '$count 个即将发布';
  }

  @override
  String upcomingReleasesRecentCount(int count) {
    return '$count 个最近更新';
  }

  @override
  String get upcomingReleasesNoneFound => '未找到即将推出或最近更新的内容';

  @override
  String upcomingReleasesAcrossSeries(String summary, int count) {
    return '$summary共 $count 个系列';
  }

  @override
  String upcomingReleasesCheckedSeries(int count) {
    return '已扫描 Audible 上的 $count 个系列';
  }

  @override
  String upcomingReleasesDateFormat(String month, int day, int year) {
    return '$year-$month-$day';
  }

  @override
  String upcomingReleasesSequenceLabel(String sequence) {
    return '#$sequence';
  }

  @override
  String get upcomingReleasesBadgeUpcoming => '即将发布';

  @override
  String get upcomingReleasesBadgeAdded => '已添加';

  @override
  String get upcomingReleasesBadgeMissing => '缺失';

  @override
  String get upcomingReleasesScanSettingsTitle => '扫描设置';

  @override
  String get upcomingReleasesFinishedAfterTitle => '系列视为完结的时限';

  @override
  String get upcomingReleasesFinishedAfterDesc =>
      '最后一本书早于此时间的系列会在扫描时跳过，仅每隔一两个月重新检查。';

  @override
  String upcomingReleasesFinishedAfterYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 年',
      one: '1 年',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesFinishedAfterNever => '从未';

  @override
  String get upcomingReleasesSkippedTitle => '已跳过的系列';

  @override
  String get upcomingReleasesSkippedNone => '暂无跳过';

  @override
  String upcomingReleasesSkippedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已跳过 $count 个',
      one: '已跳过 1 个',
    );
    return '$_temp0';
  }

  @override
  String upcomingReleasesSkippedLastBook(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '最后一本在 $count 年前',
      one: '最后一本在 1 年前',
      zero: '最后一本不足一年',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesSkippedUnmatched => '无法在 Audible 上匹配此系列';

  @override
  String get upcomingReleasesSkippedScanNow => '立即扫描';

  @override
  String get upcomingReleasesSkippedAlwaysScan => '始终扫描';

  @override
  String get upcomingReleasesSkippedNeverScan => '从不扫描';

  @override
  String upcomingReleasesSkippedScanFound(String name) {
    return '在 $name 中发现新发布';
  }

  @override
  String upcomingReleasesSkippedScanNone(String name) {
    return '$name 中没有新内容';
  }

  @override
  String get upcomingReleasesSkippedOtherLibrary => '此列表来自另一个书库。请重新扫描以刷新。';

  @override
  String get upcomingReleasesChipUpcoming => '即将发布';

  @override
  String upcomingReleasesChipMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本缺失',
      one: '1 本缺失',
      zero: '缺失',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesNoMissing => '未发现缺失的书籍';

  @override
  String get upcomingReleasesScanSeries => '扫描系列';

  @override
  String get upcomingReleasesScanUpcomingOption => '即将发布';

  @override
  String get upcomingReleasesScanUpcomingOptionDesc => '快速扫描新书与即将发布的书';

  @override
  String get upcomingReleasesScanDeepOption => '深度扫描';

  @override
  String get upcomingReleasesScanDeepOptionDesc => '同时查找每个系列中缺失的书——耗时更长';

  @override
  String get upcomingReleasesFirstScanNote =>
      '第一次扫描会检查 Audible 上的每个系列，可能需要几分钟。系列整理好之后，后续扫描会快得多。';

  @override
  String get upcomingReleasesLastScanReport => '上次扫描报告';

  @override
  String upcomingReleasesReportChecked(int count) {
    return 'Audible 已检查：$count';
  }

  @override
  String upcomingReleasesReportSkipped(int count) {
    return '已跳过：$count';
  }

  @override
  String upcomingReleasesReportUnmatched(int count) {
    return 'Audible 无法匹配：$count';
  }

  @override
  String upcomingReleasesReportFailed(int count) {
    return '检查失败：$count';
  }

  @override
  String upcomingReleasesReportFound(int upcoming, int recent) {
    return '发现 $upcoming 本即将发布、$recent 本新近发布';
  }

  @override
  String upcomingReleasesReportFoundDeep(
    int upcoming,
    int recent,
    int missing,
  ) {
    return '发现 $upcoming 本即将发布、$recent 本新近发布、$missing 本缺失';
  }

  @override
  String upcomingReleasesReportMore(int count) {
    return '+$count 本';
  }

  @override
  String get upcomingReleasesBadgeNew => '新';

  @override
  String get upcomingReleasesOpenLibrarySeries => '在书库中打开系列';

  @override
  String get upcomingReleasesAsinCopied => '已复制系列 ASIN';

  @override
  String get upcomingReleasesSetSeriesAsin => '设置系列 ASIN';

  @override
  String get upcomingReleasesSetAsinInstructions =>
      '在 audible.com 上找到该系列并复制页面链接——ASIN 是以 B0 开头的 10 位代码（例如 B08S2YN3YS）。也可以直接粘贴整条链接。';

  @override
  String get upcomingReleasesSetAsinHint => 'B0… 或 audible.com 链接';

  @override
  String get upcomingReleasesSetAsinSave => '保存';

  @override
  String get upcomingReleasesSetAsinInvalid => '该文本中未找到 ASIN';

  @override
  String get upcomingReleasesSetAsinSaved => '系列已关联——正在扫描';

  @override
  String upcomingReleasesRemoveTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '移除 $count 本书',
      one: '移除书籍',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesRemoveThisScan => '从本次扫描中移除';

  @override
  String get upcomingReleasesRemoveThisScanDesc => '以后扫描时可能再次出现';

  @override
  String get upcomingReleasesRemoveForever => '从本次及以后的扫描中移除';

  @override
  String get upcomingReleasesRemoveForeverDesc => '会进入已移除列表，可随时恢复';

  @override
  String get upcomingReleasesRemovedForeverToast => '已移除——以后扫描不再显示';

  @override
  String get upcomingReleasesRemovedBooksTitle => '已移除的书籍';

  @override
  String upcomingReleasesRemovedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本书',
      one: '1 本书',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesRemovedNone => '没有已移除的书籍';

  @override
  String get upcomingReleasesRestore => '恢复';

  @override
  String get upcomingReleasesRestoredToast => '已恢复';

  @override
  String get upcomingReleasesRestoredNextScan => '已恢复——下次扫描后会显示';

  @override
  String upcomingReleasesSelectedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已选择 $count 项',
      one: '已选择 1 项',
    );
    return '$_temp0';
  }

  @override
  String get upcomingReleasesBulkRequest => '请求';

  @override
  String get upcomingReleasesBulkRemove => '移除';

  @override
  String upcomingReleasesBulkRemoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已移除 $count 项',
      one: '已移除 1 项',
    );
    return '$_temp0';
  }

  @override
  String upcomingReleasesBulkRequestDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已发送 $count 个请求',
      one: '已发送 1 个请求',
    );
    return '$_temp0';
  }

  @override
  String upcomingReleasesBulkRequestSkipped(int count) {
    return '已跳过 $count 个';
  }

  @override
  String upcomingReleasesBulkScanned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已重新扫描 $count 个系列',
      one: '已重新扫描 1 个系列',
    );
    return '$_temp0';
  }

  @override
  String upcomingReleasesBulkScanFound(int count) {
    return '$count 个有新书';
  }

  @override
  String get seriesExcludeFromScan => '从系列扫描中排除';

  @override
  String get seriesIncludeInScan => '纳入系列扫描';

  @override
  String get homeScreenEpisodeFallback => '单集';

  @override
  String get libraryScreenUnknownTitle => '未知标题';

  @override
  String get playlistDetailDefaultName => '播放列表';

  @override
  String playlistDetailItemCount(int count) {
    return '$count 个项目';
  }

  @override
  String get playlistDetailUnfinished => '未听完';

  @override
  String get playlistDetailRemoveFromPlaylist => '从播放列表移除';

  @override
  String get playlistDetailDone => '完成';

  @override
  String playlistDetailItemsMarkedFinished(int count) {
    return '$count 项已标记为听完';
  }

  @override
  String playlistDetailItemsMarkedUnfinished(int count) {
    return '$count 项已标记为未听完';
  }

  @override
  String playlistDetailItemsRemoved(int count) {
    return '$count 项已移除';
  }

  @override
  String playlistDetailAddedToAbsorbing(String title) {
    return '已将《$title》加入收听队列';
  }

  @override
  String get collectionDetailDefaultName => '收藏';

  @override
  String smartScopeBookCount(int count) {
    return '智能范围 · $count 本书';
  }

  @override
  String get smartScopeNew => '新建智能范围';

  @override
  String get smartScopeNewSubtitle => '将一组筛选条件保存为自动更新的列表';

  @override
  String get smartScopeEditTitle => '编辑智能范围';

  @override
  String get smartScopeIcon => '图标';

  @override
  String get smartScopePublic => '对所有用户可见';

  @override
  String get smartScopeKobo => '同步到 Kobo';

  @override
  String get smartScopeRules => '规则';

  @override
  String get smartScopeMatchAll => '全部匹配';

  @override
  String get smartScopeMatchAny => '任一匹配';

  @override
  String get smartScopeAddRule => '添加规则';

  @override
  String get smartScopeAddGroup => '添加分组';

  @override
  String get smartScopeGroup => '分组';

  @override
  String get smartScopeStartFrom => '从以下开始';

  @override
  String get smartScopeFromScratch => '从零创建';

  @override
  String get smartScopeTplHasSeries => '有系列';

  @override
  String get smartScopeTplRecent => '最近添加';

  @override
  String get smartScopeTplPdf => '仅 PDF';

  @override
  String get smartScopeTplNoGenres => '无类型';

  @override
  String get smartScopeTplEpub => '仅 EPUB';

  @override
  String get smartScopeCounting => '正在统计…';

  @override
  String get smartScopeSort => '默认排序';

  @override
  String get smartScopeAddSort => '添加排序层级';

  @override
  String get smartScopeSortNone => '未设置排序，书籍按标题排序。';

  @override
  String get smartScopeAscending => '升序';

  @override
  String get smartScopeDescending => '降序';

  @override
  String get smartScopeDelete => '删除智能范围';

  @override
  String get smartScopeSaveFailed => '无法保存智能范围';

  @override
  String get smartScopeDeleteFailed => '无法删除智能范围';

  @override
  String get smartScopeLoadFailed => '无法加载智能范围';

  @override
  String get smartScopeUnsupportedRule => '此规则只能在 BookOrbit 网页端修改，这里保持原样。';

  @override
  String get smartScopeAnd => '且';

  @override
  String get smartScopeDays => '天';

  @override
  String get smartScopeWeeks => '周';

  @override
  String get smartScopeMonths => '个月';

  @override
  String get smartScopePickDate => '选择日期';

  @override
  String get smartScopeAddValue => '添加值';

  @override
  String get smartScopeValue => '值';

  @override
  String get smartScopeCustomFields => '自定义字段';

  @override
  String get smartScopeAnyProvider => '任意来源';

  @override
  String get smartScopeScoreOutstanding => '极好';

  @override
  String get smartScopeScoreGood => '好';

  @override
  String get smartScopeScoreFair => '一般';

  @override
  String get smartScopeScorePoor => '差';

  @override
  String get smartScopeMb => 'MB';

  @override
  String get smartScopeMaxValues => '最多 20 个值';

  @override
  String get scopeFieldTitle => '标题';

  @override
  String get scopeFieldAuthor => '作者';

  @override
  String get scopeFieldSeries => '系列';

  @override
  String get scopeFieldSeriesIndex => '系列序号';

  @override
  String get scopeFieldGenre => '类型';

  @override
  String get scopeFieldTag => '标签';

  @override
  String get scopeFieldReadStatus => '阅读状态';

  @override
  String get scopeFieldReadProgress => '阅读进度';

  @override
  String get scopeFieldRating => '你的评分';

  @override
  String get scopeFieldFormat => '格式';

  @override
  String get scopeFieldLibrary => '书库';

  @override
  String get scopeFieldCollection => '收藏';

  @override
  String get scopeFieldPublisher => '出版社';

  @override
  String get scopeFieldLanguage => '语言';

  @override
  String get scopeFieldPublishedDate => '出版日期';

  @override
  String get scopeFieldPublishedYear => '出版年份';

  @override
  String get scopeFieldAddedAt => '添加日期';

  @override
  String get scopeFieldStartedAt => '开始日期';

  @override
  String get scopeFieldFinishedAt => '完成日期';

  @override
  String get scopeFieldPageCount => '页数';

  @override
  String get scopeFieldFileSize => '文件大小';

  @override
  String get scopeFieldCommunityRating => '社区评分';

  @override
  String get scopeFieldCommunityRatingCount => '社区评论数';

  @override
  String get scopeFieldMetadataScore => '元数据评分';

  @override
  String get scopeFieldIsbn => 'ISBN';

  @override
  String get scopeFieldDescription => '简介';

  @override
  String get scopeFieldCover => '封面';

  @override
  String get scopeFieldAudioCover => '有声书封面';

  @override
  String get scopeFieldFileAvailability => '文件可用性';

  @override
  String get scopeFieldLockStatus => '锁定状态';

  @override
  String get scopeFieldSeriesStatus => '系列状态';

  @override
  String get scopeSortUpdatedAt => '更新日期';

  @override
  String get scopeSortLastReadAt => '最近阅读';

  @override
  String get scopeSortRandom => '随机';

  @override
  String get scopeOpContains => '包含';

  @override
  String get scopeOpNotContains => '不包含';

  @override
  String get scopeOpStartsWith => '开头是';

  @override
  String get scopeOpEndsWith => '结尾是';

  @override
  String get scopeOpEq => '等于';

  @override
  String get scopeOpNotEq => '不等于';

  @override
  String get scopeOpIsEmpty => '为空';

  @override
  String get scopeOpIsNotEmpty => '不为空';

  @override
  String get scopeOpGt => '大于';

  @override
  String get scopeOpGte => '至少';

  @override
  String get scopeOpLt => '小于';

  @override
  String get scopeOpLte => '至多';

  @override
  String get scopeOpBetween => '介于';

  @override
  String get scopeOpIncludesAny => '包含任一项';

  @override
  String get scopeOpIncludesAll => '包含全部';

  @override
  String get scopeOpExcludesAll => '排除全部';

  @override
  String get scopeOpBefore => '早于';

  @override
  String get scopeOpAfter => '晚于';

  @override
  String get scopeOpWithinLast => '在最近';

  @override
  String get scopeOpIsMissing => '缺失';

  @override
  String get scopeOpIsPresent => '存在';

  @override
  String get scopeOpIsUnread => '未读';

  @override
  String get scopeOpIsInProgress => '进行中';

  @override
  String get scopeOpIsFinished => '已完成';

  @override
  String get scopeOpIsLocked => '已锁定';

  @override
  String get scopeOpIsUnlocked => '未锁定';

  @override
  String get scopeOpIsUpNext => '在队列中';

  @override
  String get scopeOpIsTrue => '是';

  @override
  String get scopeOpIsFalse => '否';

  @override
  String smartScopeMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '匹配 $count 本书',
      one: '匹配 1 本书',
      zero: '没有匹配的书籍',
    );
    return '$_temp0';
  }

  @override
  String smartScopeDeleteConfirm(String name) {
    return '删除“$name”？此操作无法撤销。';
  }

  @override
  String collectionDetailBookCount(int count) {
    return '$count本书';
  }

  @override
  String get collectionDetailDone => '完成';

  @override
  String collectionDetailAddedToAbsorbing(String title) {
    return '已将《$title》加入收听队列';
  }

  @override
  String get audibleSeriesNoBooksFound => '在 Audible 上未找到书籍';

  @override
  String get audibleSeriesFailedToLoad => '从 Audible 加载系列失败';

  @override
  String audibleSeriesSummary(int total, int missing) {
    return 'Audible 上共 $total 本 · 缺失 $missing 本';
  }

  @override
  String audibleSeriesSummaryWithUpcoming(
    int total,
    int missing,
    int upcoming,
  ) {
    return 'Audible 上共 $total 本 · 缺失 $missing 本 · 即将发布 $upcoming 本';
  }

  @override
  String audibleSeriesFilterMissing(int count) {
    return '缺失（$count）';
  }

  @override
  String audibleSeriesFilterUpcoming(int count) {
    return '即将发布（$count）';
  }

  @override
  String audibleSeriesFilterAll(int count) {
    return '全部（$count）';
  }

  @override
  String get audibleSeriesSearching => '正在搜索 Audible…';

  @override
  String get audibleSeriesCompleteSeries => '此系列已完整！';

  @override
  String get audibleSeriesNoUpcoming => '未找到即将上架的内容';

  @override
  String get audibleSeriesUpcomingBadge => '即将发布';

  @override
  String get audibleSeriesAbridged => '删节版';

  @override
  String get audibleSeriesRegionTitle => 'Audible 区域';

  @override
  String get audibleSeriesOpenOnAudible => '在 Audible 中打开';

  @override
  String get audibleSeriesAddToCalendar => '添加到日历';

  @override
  String get audibleSeriesAddToUpcoming => '添加到即将发布';

  @override
  String get audibleSeriesAddedToUpcoming => '已添加到即将发布';

  @override
  String get audibleSeriesAlreadyInUpcoming => '已在即将发布页面中';

  @override
  String get audibleSeriesCouldNotOpenAudible => '无法打开 Audible';

  @override
  String get audibleSeriesCouldNotOpenCalendar => '无法打开日历';

  @override
  String audibleSeriesCalendarDescription(String seriesName) {
    return '《$seriesName》系列有新有声书发布';
  }

  @override
  String get authorBooksGroupBySeries => '按系列分组';

  @override
  String get authorBooksList => '列表';

  @override
  String get authorBooksGrid => '网格';

  @override
  String authorBooksBookCount(int count) {
    return '$count 本书';
  }

  @override
  String get metadataLookupCover => '封面';

  @override
  String get metadataLookupChooseFields => '选择要应用的字段';

  @override
  String metadataLookupApplyFields(int count) {
    return '应用 $count 个字段';
  }

  @override
  String metadataLookupFieldsSavedLocally(int count) {
    return '$count 个字段已保存到本地';
  }

  @override
  String get metadataLookupOverrideLocalDisplay => '覆盖本地显示';

  @override
  String get equalizerPresetFlat => '原声';

  @override
  String get equalizerPresetVoiceBoost => '人声增强';

  @override
  String get equalizerPresetBassBoost => '低音增强';

  @override
  String get equalizerPresetTrebleBoost => '高音增强';

  @override
  String get equalizerPresetPodcast => '播客模式';

  @override
  String get equalizerPresetAudiobook => '有声书';

  @override
  String get equalizerPresetReduceNoise => '降噪模式';

  @override
  String get equalizerPresetLoudness => '响度';

  @override
  String equalizerEditingSavedNamed(String title) {
    return '正在编辑\"$title\"';
  }

  @override
  String get equalizerEditingSavedGeneric => '正在编辑已保存的均衡器';

  @override
  String get equalizerPerBookEq => '每本书单独配置';

  @override
  String get notesDeleteNoteQuestion => '删除笔记？';

  @override
  String notesDeleteNoteContent(String title) {
    return '删除《$title》？';
  }

  @override
  String get notesExport => '导出';

  @override
  String get notesNewNote => '新建笔记';

  @override
  String get librarySortFilterUpcomingReleases => '即将发布';

  @override
  String get librarySortFilterMatchAllAuthorsSubtitle => '从元数据来源获取每位作者的照片和简介';

  @override
  String get librarySortFilterUpcomingReleasesSubtitle => 'Audible 中检查系列新书';

  @override
  String sleepTimerSheetChaptersLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '还剩 $count 章',
      one: '还剩 1 章',
    );
    return '$_temp0';
  }

  @override
  String sleepTimerSheetAddMinutesChip(int minutes) {
    return '+$minutes 分';
  }

  @override
  String sleepTimerSheetAddChaptersChip(int count) {
    return '+$count 章';
  }

  @override
  String sleepTimerSheetMinShort(int minutes) {
    return '$minutes 分';
  }

  @override
  String sleepTimerSheetSecondsShort(int seconds) {
    return '$seconds 秒';
  }

  @override
  String sleepTimerSheetMinSecShort(int minutes, int seconds) {
    return '$minutes 分 $seconds 秒';
  }

  @override
  String sleepTimerSheetChaptersValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 章',
      one: '1 章',
    );
    return '$_temp0';
  }

  @override
  String sleepTimerSheetChaptersChip(int count) {
    return '$count 章';
  }

  @override
  String sleepTimerSheetStartChapterSleep(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '听完 $count 章结束',
      one: '听完 1 章结束',
    );
    return '$_temp0';
  }

  @override
  String get sleepTimerSheetRewindOnSleep => '定时结束自动倒回';

  @override
  String get sleepTimerSheetShake => '摇一摇';

  @override
  String sleepTimerSheetAddsMinutes(int minutes) {
    return '增加 $minutes 分钟';
  }

  @override
  String get sleepTimerSheetAddsOneChapter => '增加 1 章';

  @override
  String get sleepTimerSheetResetsToFull => '恢复为完整时长';

  @override
  String get sleepTimerSheetTabSpecificChapter => '章节';

  @override
  String get sleepTimerSheetSpecificNoChapters => '没有可用的章节';

  @override
  String sleepTimerSheetSpecificChapterFallback(int number) {
    return '第 $number 章';
  }

  @override
  String get sleepTimerSheetSpecificPassedShort => '已过';

  @override
  String get sleepTimerSheetSpecificStart => '章节开始';

  @override
  String get sleepTimerSheetSpecificEnd => '章节结束';

  @override
  String get sleepTimerSheetSpecificEndsAt => '睡眠定时器将于';

  @override
  String sleepTimerSheetSpecificCountdown(String countdown) {
    return '$countdown 后';
  }

  @override
  String get sleepTimerSheetSpecificAlreadyPassed => '此时间点已过';

  @override
  String get sleepTimerSheetSpecificStartButton => '启动定时器';

  @override
  String get sleepTimerSheetSpecificStartButtonPassed => '已过';

  @override
  String get timeAm => '上午';

  @override
  String get timePm => '下午';

  @override
  String get collectionPickerCollectionFallback => '收藏';

  @override
  String collectionPickerNameWithCount(String name, int count) {
    return '$name（$count）';
  }

  @override
  String get playlistPickerPlaylistFallback => '播放列表';

  @override
  String playlistPickerNameWithCount(String name, int count) {
    return '$name（$count）';
  }

  @override
  String get cardChaptersPlayFromChapterTitle => '从本章开始播放？';

  @override
  String cardChaptersPlayFromChapterContent(String title) {
    return '从《$title》开始播放？';
  }

  @override
  String get cardChaptersPlay => '播放';

  @override
  String get absorbingSharedToday => '今天';

  @override
  String get absorbingSharedYesterday => '昨天';

  @override
  String get absorbingSharedMonday => '星期一';

  @override
  String get absorbingSharedTuesday => '星期二';

  @override
  String get absorbingSharedWednesday => '星期三';

  @override
  String get absorbingSharedThursday => '星期四';

  @override
  String get absorbingSharedFriday => '星期五';

  @override
  String get absorbingSharedSaturday => '星期六';

  @override
  String get absorbingSharedSunday => '星期日';

  @override
  String get absorbingSharedAm => '上午';

  @override
  String get absorbingSharedPm => '下午';

  @override
  String sectionDetailAddedToAbsorbing(String title) {
    return '已将《$title》加入收听队列';
  }

  @override
  String get sectionDetailDoneBadge => '完成';

  @override
  String get homeCustomizeAddGenreTitle => '新增类型分区';

  @override
  String get homeCustomizeAddGenreSubtitle => '选择一个类型显示在你的首页';

  @override
  String get homeSectionDoneBadge => '完成';

  @override
  String get tipsSheetQuickBookmarksTitle => '快速书签';

  @override
  String get tipsSheetQuickBookmarksDesc => '长按任意卡片上的书签按钮即可立即添加书签，无需打开书签页面。';

  @override
  String get tipsSheetCoverPlayPauseTitle => '点击封面播放/暂停';

  @override
  String get tipsSheetCoverPlayPauseDesc =>
      '点击任意卡片的封面即可播放或暂停。可在设置的“收听卡片”中切换此功能。播放时会显示淡淡的暂停图标，提示封面可点击。';

  @override
  String get tipsSheetFullScreenPlayerTitle => '全屏播放器';

  @override
  String get tipsSheetFullScreenPlayerDesc => '在任意沉浸卡片上向上滑动即可打开全屏播放器，向下滑动即可关闭。';

  @override
  String get tipsSheetQuickAddAbsorbingTitle => '快速加入收听卡片';

  @override
  String get tipsSheetQuickAddAbsorbingDesc =>
      '在列表页（系列、作者、搜索结果）中向右滑动任意书籍，即可将其立即加入收听队列。';

  @override
  String get tipsSheetShakeExtendSleepTitle => '摇一摇延长睡眠定时';

  @override
  String get tipsSheetShakeExtendSleepDesc =>
      '如果睡眠定时器正在运行，摇动手机即可延长时间。可在设置中的“睡眠定时器”调整延长的分钟数。';

  @override
  String get tipsSheetSeriesNavigationTitle => '系列导航';

  @override
  String get tipsSheetSeriesNavigationDesc =>
      '在任意书籍的详情弹窗中点击系列名称，即可查看该系列的所有书籍，并按阅读顺序排序，每本书的封面都会显示序号徽章。';

  @override
  String get tipsSheetSwipeBetweenBooksTitle => '滑动切换书籍';

  @override
  String get tipsSheetSwipeBetweenBooksDesc =>
      '在收听界面左右滑动即可切换你正在收听的书籍。开启手动队列模式后，卡片也会作为你的队列使用，因此当前书籍播放结束时会自动播放下一本。';

  @override
  String get tipsSheetTapToSeekTitle => '点击跳转';

  @override
  String get tipsSheetTapToSeekDesc =>
      '点击章节或书籍进度条的任意位置即可直接跳转到对应进度。你也可以拖动进度条以进行更精细的控制。';

  @override
  String get tipsSheetSpeedAdjustedTimeTitle => '实际播放时长';

  @override
  String get tipsSheetSpeedAdjustedTimeDesc =>
      '剩余时间和章节时长会根据你的播放速度自动调整。用 1.5×倍播放？界面显示的时间就是你实际需要的时长。';

  @override
  String get tipsSheetPlaybackHistoryTitle => '播放历史';

  @override
  String get tipsSheetPlaybackHistoryDesc =>
      '点击任意卡片上的历史按钮即可查看所有播放、暂停、跳转和倍速调整的时间线。点击任意事件即可跳回对应位置。';

  @override
  String get tipsSheetAutoRewindTitle => '自动回退';

  @override
  String get tipsSheetAutoRewindDesc =>
      '暂停后恢复播放时，Absorb 会自动回退几秒，确保你不会错过内容。回退时长会根据你离开的时间自动调整。你可以在设置中进行修改。';

  @override
  String get tipsSheetSeriesQueueModeTitle => '系列连播模式';

  @override
  String get tipsSheetSeriesQueueModeDesc =>
      '当你听完某个系列中的一本书时，Absorb 可以自动播放下一本书。请在“设置”中将队列模式更改为“系列”。';

  @override
  String get tipsSheetOfflineModeTitle => '离线模式';

  @override
  String get tipsSheetOfflineModeDesc =>
      '点击“正在收听”界面上的同步图标即可进入离线模式。这将暂停同步并节省流量，且仅显示你已下载的书籍。非常适合在飞机上或信号较弱的区域使用。';

  @override
  String get tipsSheetUpcomingReleasesTitle => '即将上架';

  @override
  String get tipsSheetUpcomingReleasesDesc =>
      '在“系列”标签页中，再次点击该标签即可打开其排序与筛选面板，然后选择“即将上架”，即可按出版日期查看当前系列中已推出和即将推出的新书。';

  @override
  String get tipsSheetPerBookEqTitle => '为每本书单独配置均衡器';

  @override
  String get tipsSheetPerBookEqDesc =>
      '每本书都会记住自己的均衡器设置。为一本科幻史诗调好一次，下次播放时仍是同样的声音。';

  @override
  String get tipsSheetPerBookSpeedTitle => '针对单本有声书的语速设置';

  @override
  String get tipsSheetPerBookSpeedDesc =>
      '播放速度支持书籍单独配置。非虚构内容 1.5x 效率拉满，有声剧 1.0x 原汁原味，省去频繁调整的麻烦。';

  @override
  String get tipsSheetAutoSleepWindowTitle => '自动睡眠时间段';

  @override
  String get tipsSheetAutoSleepWindowDesc => '设定您常睡的时间段，在此时间段内听书，睡眠定时器将自动启用。';

  @override
  String get tipsSheetSleepFadeChimeTitle => '睡眠淡出与提示音';

  @override
  String get tipsSheetSleepFadeChimeDesc =>
      '睡眠定时结束时，音频将逐渐淡出并伴有可选提示音，避免在听书时突然中断。';

  @override
  String get tipsSheetCarModeTitle => '车载模式';

  @override
  String get tipsSheetCarModeDesc => '轻点汽车图标，开启车载模式，让行车操作更安全舒适。';

  @override
  String get tipsSheetAudibleSeriesTitle => '获取 Audible 系列信息';

  @override
  String get tipsSheetAudibleSeriesDesc =>
      '打开任意系列，点击右上角的“更多”图标（三个点），即可从 Audible 获取完整的系列清单，包含缺失以及您尚未开始阅读的书籍。';

  @override
  String get tipsSheetTranscribeBookmarkTitle => '转写书签';

  @override
  String get tipsSheetTranscribeBookmarkDesc =>
      '完全在设备上将任意书签处的音频转为文字。在“设置 > 高级 > 转写”中开启并下载模型，然后在书签上点击“转写”，文字会写入备注，可直接修改或分享。';

  @override
  String get tipsSheetFindBetweenFormatsTitle => '在有声书与电子书之间跳转';

  @override
  String get tipsSheetFindBetweenFormatsDesc =>
      '开启转写并已下载书籍后，暂停并点击播放器上的“在电子书中查找位置”，即可打开电子书并定位到刚听到的段落。在阅读器中选中文字并点击耳机图标，可从该处开始播放有声书。';

  @override
  String get tipsSheetShareQuoteTitle => '分享摘录';

  @override
  String get tipsSheetShareQuoteDesc =>
      '把电子书划线或书签备注分享为图片，摘录会叠加在书籍封面上。可在划线和书签面板中找到分享选项。';

  @override
  String get tipsSheetClipExportTitle => '导出音频片段';

  @override
  String get tipsSheetClipExportDesc =>
      '打开书签并点击“导出片段”，可裁剪并保存一段简短的音频（含封面图），非常适合分享喜欢的片段。';

  @override
  String get tipsSheetAllHighlightsTitle => '所有划线集中查看';

  @override
  String get tipsSheetAllHighlightsDesc =>
      '“全部书签”页面有一个“划线”标签页，汇集所有书籍的电子书划线。点击即可分享或跳回书中。';

  @override
  String get tipsSheetVolumeKeyPagesTitle => '音量键翻页';

  @override
  String get tipsSheetVolumeKeyPagesDesc =>
      '用音量键翻动电子书页面。在阅读器设置中开启，可选正常或反向，音频播放时也可保持开启。';

  @override
  String get tipsSheetSettingsSyncTitle => '设置同步';

  @override
  String get tipsSheetSettingsSyncDesc =>
      '通过你自己的 WebDAV 服务器，在多台设备间同步设置、每本书的播放速度和收听顺序。可在“设置 > 备份与同步”中配置。';

  @override
  String get tipsSheetNavLongPressTitle => '长按底部标签页';

  @override
  String get tipsSheetNavLongPressDesc => '长按“首页”标签可在任意页面切换书库；长按“书库”标签可直接进入搜索。';

  @override
  String get bookCardUnknownTitle => '未知标题';

  @override
  String get bookCardExplicitBadge => 'E';

  @override
  String get bookCardDone => '完成';

  @override
  String get bookCardSaved => '已保存';

  @override
  String get episodeRowEpisode => '单集';

  @override
  String get episodeRowToday => '今天';

  @override
  String get episodeRowYesterday => '昨天';

  @override
  String episodeRowDaysAgo(int count) {
    return '$count 天前';
  }

  @override
  String episodeRowWeeksAgo(int count) {
    return '$count 周前';
  }

  @override
  String episodeRowDurationHm(int hours, int minutes) {
    return '$hours 小时 $minutes 分';
  }

  @override
  String episodeRowDurationM(int minutes) {
    return '$minutes 分';
  }

  @override
  String episodeRowSeasonShort(String number) {
    return 'S$number';
  }

  @override
  String episodeRowEpisodeShort(String number) {
    return 'E$number';
  }

  @override
  String get librarySearchResultsExplicitBadge => 'E';

  @override
  String get librarySearchResultsDone => '完成';

  @override
  String get librarySearchResultsSaved => '已保存';

  @override
  String librarySearchResultsSequence(String number) {
    return '#$number';
  }

  @override
  String get librarySearchResultsUnknownSeries => '未知系列';

  @override
  String get librarySearchResultsUnknownEpisode => '未知单集';

  @override
  String librarySearchResultsBookCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本书',
      one: '1 本书',
    );
    return '$_temp0';
  }

  @override
  String get libraryGridTilesExplicitBadge => 'E';

  @override
  String get libraryGridTilesDone => '完成';

  @override
  String get libraryGridTilesSaved => '已保存';

  @override
  String libraryGridTilesSequence(String number) {
    return '#$number';
  }

  @override
  String get libraryGridTilesUnknownSeries => '未知系列';

  @override
  String get seriesCardUnknownSeries => '未知系列';

  @override
  String seriesCardBookCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 本书',
      one: '1 本书',
    );
    return '$_temp0';
  }

  @override
  String get cardProgressFineScrubbing => '精细拖动';

  @override
  String get cardProgressQuarterSpeed => '四分之一速度';

  @override
  String get cardProgressHalfSpeed => '半速';

  @override
  String cardProgressChapterPrefix(String number) {
    return '第 $number 章';
  }

  @override
  String get cardEdgeProgressFineScrubbing => '精细拖动';

  @override
  String get cardEdgeProgressQuarterSpeed => '四分之一速度';

  @override
  String get cardEdgeProgressHalfSpeed => '半速';

  @override
  String get authSessionExpired => '会话已过期，请重新登录。';

  @override
  String authCannotReachServer(String url) {
    return '无法连接服务器 $url';
  }

  @override
  String get authInvalidUsernameOrPassword => '用户名或密码无效';

  @override
  String get authInvalidApiKey => 'API 密钥无效';

  @override
  String get authLoginFailedDetail => '登录失败——请检查服务器地址和账户信息';

  @override
  String get authUnexpectedServerResponse => '服务器响应异常';

  @override
  String get authSsoUnexpectedResponse => 'SSO 返回了异常响应';

  @override
  String get authSwitchedToLocalServer => '已切换到本地服务器';

  @override
  String get authSwitchedToRemoteServer => '已切换到远程服务器';

  @override
  String get lpDeletedFinishedDownload => '已删除已完成的下载';

  @override
  String lpSubscribedPodcastDownloading(String showTitle, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '正在下载 $count 个新单集',
      one: '正在下载 1 个新单集',
    );
    return '$showTitle：$_temp0';
  }

  @override
  String lpSubscribedEpisodeAddedStart(String showTitle) {
    return '$showTitle 已添加到队列顶部';
  }

  @override
  String lpSubscribedEpisodeAddedSecond(String showTitle) {
    return '$showTitle 已添加到队列第二位';
  }

  @override
  String lpSubscribedEpisodeAddedEnd(String showTitle) {
    return '$showTitle 已添加到队列末尾';
  }

  @override
  String lpSubscribedEpisodeDownloaded(String showTitle) {
    return '已下载 $showTitle 的新单集';
  }

  @override
  String get statsWeekStartsOn => '每周起始日';

  @override
  String get episodeListNewEpisodePosition => '新单集插入位置';

  @override
  String get episodeListPositionTop => '队列顶部';

  @override
  String get episodeListPositionSecond => '队列第二位';

  @override
  String get episodeListPositionEnd => '队列末尾';

  @override
  String get episodeListPositionNone => '不加入队列';

  @override
  String get episodeListPositionNoneDesc => '仍会通知并下载';

  @override
  String sleepRewindUndoNote(int minutes) {
    return '在 $minutes 分钟内播放，后退会被取消';
  }

  @override
  String lpQueueDownloadingItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '队列：正在下载 $count 项',
      one: '队列：正在下载 1 项',
    );
    return '$_temp0';
  }

  @override
  String lpDownloadingBooks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '正在下载 $count 本书',
      one: '正在下载 1 本书',
    );
    return '$_temp0';
  }

  @override
  String lpDownloadingEpisodes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '正在下载 $count 个单集',
      one: '正在下载 1 个单集',
    );
    return '$_temp0';
  }

  @override
  String get downloadNotifProgressChannelName => '下载进度';

  @override
  String get downloadNotifProgressChannelDesc => '有声书下载时显示进度';

  @override
  String get downloadNotifAlertChannelName => '下载提醒';

  @override
  String get downloadNotifAlertChannelDesc => '下载完成或失败时通知';

  @override
  String get downloadNotifDownloadingTitle => '正在下载…';

  @override
  String downloadNotifActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个下载进行中',
      one: '1 个下载进行中',
    );
    return '$_temp0';
  }

  @override
  String downloadNotifSlotTitle(String title) {
    return '正在下载：$title';
  }

  @override
  String get downloadNotifStartingLabel => '正在开始…';

  @override
  String get downloadNotifCompleteTitle => '下载完成';

  @override
  String downloadNotifCompleteBody(String title) {
    return '《$title》已经下载好，随时随地开始听吧';
  }

  @override
  String get downloadNotifFailedTitle => '下载失败';

  @override
  String get upcomingNotifChannelName => '扫描即将发布内容';

  @override
  String get upcomingNotifChannelDesc => '显示即将发布扫描的进度';

  @override
  String get upcomingNotifScanTitle => '即将发布内容扫描中';

  @override
  String get upcomingNotifStartingScan => '正在开始扫描…';

  @override
  String upcomingNotifCheckingSeries(
    String seriesName,
    int current,
    int total,
  ) {
    return '正在检查 $seriesName…（$current/$total）';
  }

  @override
  String get upcomingNotifFoundTitle => '查找到即将发布内容！';

  @override
  String upcomingNotifFoundBody(int books, int series) {
    String _temp0 = intl.Intl.pluralLogic(
      series,
      locale: localeName,
      other: '$series 个系列',
      one: '1 个系列',
    );
    return '共 $_temp0、$books 本即将发布';
  }

  @override
  String get androidAutoTabContinue => '继续';

  @override
  String get androidAutoTabLibrary => '书库';

  @override
  String get androidAutoTabDownloads => '下载';

  @override
  String get settingsSearchHint => '搜索设置…';

  @override
  String get settingsSearchNoResults => '没有匹配的设置';

  @override
  String get carConnectAutoplay => 'Android Auto 连接时开始播放';

  @override
  String get carConnectAutoplayIos => 'CarPlay 连接时开始播放';

  @override
  String get carConnectAutoplayOnSubtitle => '车机连接时自动开始播放上次收听的书';

  @override
  String get carConnectAutoplayOffSubtitle => '播放会等待你按下播放键';

  @override
  String get sectionCar => 'Android Auto';

  @override
  String get sectionCarIos => 'CarPlay';

  @override
  String get sectionSiri => 'Siri';

  @override
  String get siriUseWithSiri => '使用 Siri';

  @override
  String get siriStatusOn => '开启。Siri 可以按名称查找并播放你的书籍和播客。';

  @override
  String get siriStatusAsk => '允许 Siri 按名称查找并播放你的书籍和播客。';

  @override
  String get siriStatusOff => 'Absorb 的 Siri 已关闭。请在 iOS 设置中开启。';

  @override
  String get siriAllow => '允许';

  @override
  String get siriOpenSettings => '打开设置';

  @override
  String get siriThingsToSay => '可以这样说';

  @override
  String get siriExamples =>
      '“在 Absorb 上播放[书名]”\n“在 Absorb 上播放[系列名]”\n“在 Absorb 上播放[作者]的作品”\n“在 Absorb 上播放[播客]的最新一期”\n“继续播放 Absorb”\n“在 Absorb 中后退”\n“在 Absorb 中下一章”\n“在 Absorb 中设置睡眠定时器”\n“在 Absorb 中添加书签”\n“我在 Absorb 上听什么”';

  @override
  String get siriShortcutsNote =>
      '即使没有此权限，继续、暂停、跳过、章节、睡眠定时器、书签和当前播放内容依然可用。这些操作也在“快捷指令”应用中，可用于自动化和操作按钮。';

  @override
  String get carBookOrder => '车机中的书籍顺序';

  @override
  String get carBookOrderReverse => '反转书籍顺序';

  @override
  String get carBookOrderReverseSubtitle => 'Z 到 A，或最早添加的在前';

  @override
  String get carPodcastOrder => '车机中的播客顺序';

  @override
  String get carEpisodesOldestFirst => '最旧单集优先';

  @override
  String get carEpisodesOldestFirstSubtitle => '适合从头开始听的节目';

  @override
  String get androidAutoCatBooks => '书籍';

  @override
  String get androidAutoCatSeries => '系列';

  @override
  String get androidAutoCatAuthors => '作者';

  @override
  String get androidAutoCatCollections => '收藏';

  @override
  String get androidAutoCatPlaylists => '播放列表';

  @override
  String get showTipsAgain => '再次显示提示';

  @override
  String get showTipsAgainSubtitle => '恢复你已关闭的功能提示';

  @override
  String get tipsRestored => '已恢复提示';

  @override
  String get resetSpeedPresets => '重置速度预设';

  @override
  String get resetSpeedPresetsSubtitle => '恢复默认的播放速度选项';

  @override
  String get speedPresetsReset => '速度预设已重置';

  @override
  String get editAuthor => '编辑作者';

  @override
  String get authorName => '名称';

  @override
  String get authorImage => '作者照片';

  @override
  String get authorRemoveImage => '移除照片';

  @override
  String get authorRemoveImageTitle => '移除作者照片？';

  @override
  String get authorRemoveImageConfirm => '这会删除服务器上的照片。';

  @override
  String get authorImageRemoved => '照片已移除';

  @override
  String get authorImageFailed => '无法更新作者照片';

  @override
  String get authorUpdated => '作者已更新';

  @override
  String get authorUpdateFailed => '无法更新作者';

  @override
  String get authorMatched => '作者已按匹配结果更新';

  @override
  String get authorNoMatchFound => '未找到匹配';

  @override
  String authorMergedInto(String name) {
    return '已合并到 $name';
  }

  @override
  String get authorQuickMatchHint => '从所选区域的 Audible 获取名称、ASIN、简介和照片。';

  @override
  String get region => '区域';

  @override
  String get editTabDetails => '详情';

  @override
  String get editTabCover => '封面';

  @override
  String get editTabMatch => '匹配';

  @override
  String get editTabEmbed => '嵌入';

  @override
  String get chapterEditorTitle => '编辑章节';

  @override
  String get chapterNotConnected => '未连接服务器';

  @override
  String get chapterErrorFirstNotZero => '第一章必须从 0:00 开始';

  @override
  String get chapterErrorStartAfterPrevious => '开始时间必须晚于上一章';

  @override
  String get chapterErrorStartBeforeEnd => '开始时间必须早于书籍结束时间';

  @override
  String get chapterErrorTitleRequired => '标题为必填项';

  @override
  String get chapterEditStartTitle => '编辑开始时间';

  @override
  String get chapterTimeHintSeconds => '秒';

  @override
  String get chapterTimeHintFull => 'HH:MM:SS 或秒数';

  @override
  String get chapterInvalidTime => '时间无效';

  @override
  String get chapterLocked => '章节已锁定';

  @override
  String get chapterAllLocked => '所有章节均已锁定';

  @override
  String chapterTrackTitle(int number) {
    return '音轨 $number';
  }

  @override
  String get chapterNoAudioForPosition => '此位置没有音频';

  @override
  String get chapterCouldNotPlayPreview => '无法播放预览';

  @override
  String chapterStartSetTo(String time) {
    return '起点已设为 $time';
  }

  @override
  String get chapterAddNumberedTitle => '添加编号章节';

  @override
  String chapterNextPreview(String first, String second) {
    return '接下来：“$first”、“$second”…';
  }

  @override
  String get chapterHowMany => '章节数量';

  @override
  String get add => '添加';

  @override
  String get chapterCountRange => '请输入 1 到 150 之间的数量';

  @override
  String get chapterTitlesUpdated => '章节标题已更新';

  @override
  String get chaptersApplied => '章节已应用';

  @override
  String get chapterDiscardTitle => '放弃更改？';

  @override
  String get chapterDiscardMessage => '恢复到已保存的章节。';

  @override
  String get chapterRemoveAllTitle => '移除所有章节？';

  @override
  String get chapterRemoveAllMessage => '这会移除此书的全部章节。';

  @override
  String get chapterAllRemoved => '已移除所有章节';

  @override
  String get chapterFixHighlighted => '请先修正高亮的章节';

  @override
  String get chaptersUpdated => '章节已更新';

  @override
  String get ok => '确定';

  @override
  String get chapterSaveButton => '保存章节';

  @override
  String get chapterAddHint => '添加章节（例如“Chapter 01”）';

  @override
  String get chapterAddTooltip => '添加章节';

  @override
  String get chapterRemoveAll => '全部移除';

  @override
  String get chapterShiftTimes => '平移时间';

  @override
  String get chapterFromTracks => '从音轨生成';

  @override
  String get chapterLookup => '查询';

  @override
  String get chapterShowSeconds => '显示秒数';

  @override
  String chapterWindowMinutes(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get chapterLoopCut => '循环播放裁剪段';

  @override
  String get chapterFindStart => '查找起点';

  @override
  String get chapterFindStartListening => '正在试听标记附近';

  @override
  String get chapterFindStartNone => '这里听起来不像章节开头';

  @override
  String get chapterFindStartWider => '扩大搜索范围';

  @override
  String get chapterFindStartCeiling => '已在标记前后各半小时内搜索。真正的起点更远，或者没有可听出的章节播报。';

  @override
  String get chapterFindStartStrong => '听起来像本章开头';

  @override
  String get chapterFindStartMaybe => '类似章节的关键词';

  @override
  String chapterFindStartGap(String seconds) {
    return '间隔 $seconds 秒';
  }

  @override
  String chapterFindStartRange(String from, String to) {
    return '已搜索 $from 至 $to';
  }

  @override
  String get chapterFindStartNeedsModel => '请先在设置中开启转写并下载模型';

  @override
  String get chapterFindStartUseThis => '使用此项';

  @override
  String chapterFindStartTitle(String title) {
    return '标题：$title';
  }

  @override
  String get chapterShiftBySeconds => '平移（秒）';

  @override
  String get chapterShiftHint => '平移所有未锁定的章节。使用负值可提前。';

  @override
  String get chapterTitleHint => '章节标题';

  @override
  String get chapterStopPreview => '停止预览';

  @override
  String get chapterPreviewFromHere => '从此处预览';

  @override
  String get chapterScrubHint => '拖动或微调以移动起点';

  @override
  String chapterStartAt(String time) {
    return '从 $time 开始';
  }

  @override
  String get chapterUnlock => '解锁';

  @override
  String get chapterLock => '锁定';

  @override
  String get chapterInsertBelow => '在下方插入';

  @override
  String get chapterFindTitle => '查找章节';

  @override
  String get chapterFindSubtitle => '通过 ASIN 从 Audible/Audnexus 查询章节。';

  @override
  String get chapterEnterAsin => '输入 ASIN';

  @override
  String get chapterLookupFailed => '查询失败——请检查 ASIN';

  @override
  String get chapterNoChaptersFound => '该 ASIN 未找到章节';

  @override
  String get chapterRemoveBranding => '移除 Audible 片头片尾';

  @override
  String chapterFoundCount(int count) {
    return '找到 $count 个章节';
  }

  @override
  String chapterAudibleVsBook(String audible, String book) {
    return 'Audible $audible  -  书籍 $book';
  }

  @override
  String get chapterAudibleLonger => 'Audible 版本比你的文件更长——后面的章节可能对不上。';

  @override
  String get chapterAudibleShorter => 'Audible 版本比你的文件更短——章节可能对不上。';

  @override
  String get chapterTitlesOnly => '仅标题';

  @override
  String get chapterApplyChapters => '应用章节';

  @override
  String get coverSearchTitle => '搜索封面';

  @override
  String get coverSearchRefineHint => '调整标题/作者以优化结果——不会修改书籍本身。';

  @override
  String get coverNoneFound => '未找到封面';

  @override
  String get coverEnterTitleFirst => '请先输入标题';

  @override
  String get coverUpdated => '封面已更新';

  @override
  String get coverCouldNotUpdate => '无法更新封面';

  @override
  String get coverApply => '应用封面';

  @override
  String get coverUnknownResolution => '未知分辨率';

  @override
  String get embedIntro => '将元数据（含封面和章节）嵌入音频文件。';

  @override
  String get embedBackupOption => '请先备份音频文件';

  @override
  String get embedNoteInFolder => '元数据将嵌入有声书文件夹内的音频轨道。';

  @override
  String get embedNoteMultiTrack => '多音轨有声书不会嵌入章节。';

  @override
  String get embedNoteNavigateAway => '任务开始后可以离开此页面。';

  @override
  String get embedStartButton => '开始嵌入元数据';

  @override
  String embedProgress(String percent) {
    return '正在嵌入 $percent%';
  }

  @override
  String get embedProgressIndeterminate => '正在嵌入…';

  @override
  String taskProgressKeepsRunning(String percent) {
    return '$percent% - 离开此页面后仍会继续';
  }

  @override
  String get taskStarting => '正在开始…';

  @override
  String get embedBackupNoteIntro => '原始音频文件的备份将存放在服务器上的 ';

  @override
  String embedBackupNotePath(String itemId) {
    return '/metadata/cache/items/$itemId/';
  }

  @override
  String get embedBackupNoteOutro => '。请定期清理项目缓存。';

  @override
  String get embedDialogTitle => '嵌入元数据';

  @override
  String embedConfirmMessage(int count, String backup) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# 个音频文件',
      one: '# 个音频文件',
    );
    return '将元数据嵌入 $_temp0？音频文件将被重写$backup。';
  }

  @override
  String get embedConfirmBackupClause => '（先备份原始文件）';

  @override
  String get embedConfirmAction => '嵌入';

  @override
  String get embedCouldNotStart => '无法开始嵌入';

  @override
  String get embedStarted => '嵌入已开始';

  @override
  String get embedComplete => '嵌入完成';

  @override
  String get embedFailed => '嵌入失败';

  @override
  String get encodeComplete => '编码完成';

  @override
  String get encodeFailedTask => '编码失败';

  @override
  String encodeProgress(String percent) {
    return '正在编码 $percent%';
  }

  @override
  String get encodeProgressIndeterminate => '正在编码…';

  @override
  String get adminApiKeys => 'API 密钥';

  @override
  String get adminApiKeysSubtitle => '程序访问令牌';

  @override
  String get adminApiKeysNewTitle => '新建 API 密钥';

  @override
  String get adminApiKeysName => '名称';

  @override
  String get adminApiKeysNameHint => '例如 Home Assistant';

  @override
  String get adminApiKeysOwner => '用户';

  @override
  String get adminApiKeysExpiration => '有效期';

  @override
  String get adminApiKeysActive => '启用';

  @override
  String get adminApiKeysActiveSub => '密钥创建后立即可用';

  @override
  String get adminApiKeysInactive => '停用';

  @override
  String get adminApiKeysExpired => '已过期';

  @override
  String get adminApiKeysCreate => '创建密钥';

  @override
  String get adminApiKeysCreated => 'API 密钥已创建';

  @override
  String get adminApiKeysTokenLabel => '你的新 API 密钥';

  @override
  String get adminApiKeysCopyWarning => '请立即复制此密钥。出于安全考虑，它不会再次显示。';

  @override
  String get adminApiKeysCopy => '复制';

  @override
  String get adminApiKeysCopied => '已复制到剪贴板';

  @override
  String get adminApiKeysDone => '完成';

  @override
  String get adminApiKeysDeleteTitle => '吊销 API 密钥？';

  @override
  String get adminApiKeysDeleted => 'API 密钥已吊销';

  @override
  String get adminApiKeysRevoke => '吊销';

  @override
  String get adminApiKeysSetActive => '设为启用';

  @override
  String get adminApiKeysSetInactive => '设为停用';

  @override
  String get adminApiKeysFailedCreate => '无法创建 API 密钥';

  @override
  String get adminApiKeysFailedDelete => '无法吊销 API 密钥';

  @override
  String get adminApiKeysFailedUpdate => '无法更新 API 密钥';

  @override
  String get adminApiKeysEmpty => '暂无 API 密钥';

  @override
  String get adminApiKeysEmptySub => '创建一个，让应用和脚本可以访问你的服务器';

  @override
  String get adminApiKeysNeverUsed => '从未使用';

  @override
  String get adminApiKeysNeverExpires => '永不过期';

  @override
  String get adminApiKeysNameRequired => '输入名称';

  @override
  String get adminApiKeysUserRequired => '选择用户';

  @override
  String get adminApiKeysExpNever => '从未';

  @override
  String get adminApiKeysExp7d => '7 天';

  @override
  String get adminApiKeysExp30d => '30 天';

  @override
  String get adminApiKeysExp90d => '90 天';

  @override
  String get adminApiKeysExp1y => '1 年';

  @override
  String adminApiKeysLastUsed(String time) {
    return '最近使用 $time';
  }

  @override
  String adminApiKeysExpiresOn(String date) {
    return '到期时间 $date';
  }

  @override
  String adminApiKeysDeleteContent(String name) {
    return '吊销“$name”？使用该密钥的应用将立即失去访问权限。';
  }

  @override
  String get endOfEpisode => '单集结束';

  @override
  String get sleepTimerSheetEpisodeSleepStart => '单集结束后睡眠';

  @override
  String get bookmarkListen => '试听';

  @override
  String get bookmarkPause => '暂停';

  @override
  String get bookmarkPreviewFailed => '无法播放此处。';

  @override
  String get clipExport => '导出片段';

  @override
  String get clipJumpToStart => '跳到开头';

  @override
  String get clipJumpToEnd => '跳到结尾';

  @override
  String get clipSetStart => '设置起点';

  @override
  String get clipSetEnd => '设置终点';

  @override
  String get clipInLabel => '入点';

  @override
  String get clipOutLabel => '出点';

  @override
  String get clipSave => '保存片段';

  @override
  String clipExportSaved(String filename) {
    return '已保存 $filename';
  }

  @override
  String get clipExportClamped => '片段已保存，已截短至本音轨末尾';

  @override
  String get clipExportFailed => '无法导出片段。';

  @override
  String get clipDownloadToExport => '在 iPhone 上导出片段前请先下载此书。';

  @override
  String get fsPickerTitle => '选择文件夹';

  @override
  String get fsServerRoot => '服务器根目录';

  @override
  String get fsEmptyFolder => '此处没有子文件夹';

  @override
  String get fsUseThisFolder => '使用此文件夹';

  @override
  String get adminLibrariesManage => '书库';

  @override
  String get adminLibrariesManageSubtitle => '创建、编辑与排序';

  @override
  String get adminUploadTitle => '上传媒体';

  @override
  String get adminUploadSubtitle => '从文件添加书籍和播客';

  @override
  String get adminUploadNoLibraries => '请先创建书库再上传媒体。';

  @override
  String get adminUploadDestination => '目标位置';

  @override
  String get adminUploadFolder => '书库文件夹';

  @override
  String get adminUploadDetails => '项目详情';

  @override
  String get adminUploadOptional => '可选';

  @override
  String get adminUploadAutoMetadata => '自动获取元数据';

  @override
  String get adminUploadAutoMetadataSubtitle => '用最佳匹配填充标题、作者和系列';

  @override
  String get adminUploadMetadataProvider => '元数据来源';

  @override
  String get adminUploadMetadataSearching => '正在搜索元数据…';

  @override
  String get adminUploadMetadataNoResults => '未找到元数据匹配。你仍然可以上传此项目。';

  @override
  String get adminUploadMetadataFailed => '无法搜索元数据。你仍然可以上传此项目。';

  @override
  String get adminUploadDestinationPreview => '服务器目标位置';

  @override
  String get adminUploadFiles => '文件';

  @override
  String adminUploadSelectedFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
      one: '1 个文件',
    );
    return '$_temp0';
  }

  @override
  String get adminUploadChooseFiles => '选择文件';

  @override
  String get adminUploadAddFiles => '添加文件';

  @override
  String get adminUploadBookFilesHint => '选择音频或电子书文件，也可以包含封面和元数据文件。';

  @override
  String get adminUploadPodcastFilesHint => '选择一个或多个音频文件，也可以包含封面和元数据文件。';

  @override
  String get adminUploadUnsupportedFiles => '部分所选文件不受 Audiobookshelf 支持。';

  @override
  String get adminUploadFilePickerFailed => '无法打开所选文件。';

  @override
  String get adminUploadTitleRequired => '输入标题';

  @override
  String get adminUploadLibraryRequired => '选择书库';

  @override
  String get adminUploadFolderRequired => '选择书库文件夹';

  @override
  String get adminUploadFilesRequired => '请至少选择一个文件';

  @override
  String get adminUploadPodcastFileRequired => '请为此播客至少选择一个音频文件。';

  @override
  String get adminUploadBookFileRequired => '请为此书至少选择一个音频或电子书文件。';

  @override
  String get adminUploadPathCheckFailed => '无法检查目标文件夹。未上传任何内容。';

  @override
  String get adminUploadDestinationExists => '该目标文件夹已在服务器上存在。';

  @override
  String adminUploadDestinationUsedBy(String title) {
    return '该目标位置已被《$title》使用。';
  }

  @override
  String get adminUploadAddToExistingTitle => '文件夹已存在';

  @override
  String adminUploadAddToExisting(String title) {
    return '该文件夹属于《$title》。要将文件添加到其中吗？服务器会在下次扫描时识别。';
  }

  @override
  String get adminUploadAddToExistingNoItem => '该文件夹已在服务器上存在。要将文件添加到其中吗？';

  @override
  String get adminUploadAddToBook => '添加到已有书籍';

  @override
  String get adminUploadAddToBookHint => '搜索此书库';

  @override
  String get adminUploadNoBooksFound => '未找到书籍';

  @override
  String adminUploadAddingTo(String title) {
    return '正在向《$title》添加文件';
  }

  @override
  String adminUploadAddedTo(String title) {
    return '已向《$title》添加文件';
  }

  @override
  String get adminUploadTargetNoFolder => '在服务器上找不到该书的文件夹。';

  @override
  String adminUploadTargetFolderMismatch(String preview, String folder) {
    return '服务器会把这些文件放入“$preview”，而不是该书的文件夹“$folder”。未上传任何内容。';
  }

  @override
  String get adminUploadUploading => '正在上传…';

  @override
  String adminUploadProgress(int percent) {
    return '正在上传 $percent%';
  }

  @override
  String get adminUploadButton => '上传';

  @override
  String adminUploadComplete(String title) {
    return '已上传《$title》';
  }

  @override
  String get adminUploadFailed => '上传失败';

  @override
  String adminUploadFailedReason(String error) {
    return '上传失败：$error';
  }

  @override
  String get adminUploadReselectFiles => '重试前请重新选择文件。';

  @override
  String get adminServerSettings => '服务器设置';

  @override
  String get adminServerSettingsSubtitle => '扫描、存储与排序';

  @override
  String get adminAuthentication => '身份验证';

  @override
  String get adminAuthenticationSubtitle => '密码与 OpenID Connect 登录';

  @override
  String get adminStats => '统计';

  @override
  String get adminStatsSubtitle => '书库与收听总计';

  @override
  String get adminAllSessions => '全部会话';

  @override
  String get adminAllSessionsSubtitle => '查看并管理所有收听会话';

  @override
  String get adminSessionsAllUsers => '所有用户';

  @override
  String get adminSessionsEmpty => '无会话';

  @override
  String get statsLibraryTotals => '书库总计';

  @override
  String get statsTotalItems => '项目';

  @override
  String get statsAudioFiles => '音频文件';

  @override
  String get statsTotalSize => '总大小';

  @override
  String get statsBooks => '书籍';

  @override
  String get statsPodcasts => '播客';

  @override
  String get statsBooksSize => '书籍大小';

  @override
  String get statsYearReview => '年度回顾';

  @override
  String get statsNoYearData => '今年暂无数据';

  @override
  String get statsListeningTime => '收听时长';

  @override
  String get statsSessions => '会话';

  @override
  String get statsBooksAdded => '添加的书籍';

  @override
  String get statsAuthorsAdded => '添加的作者';

  @override
  String get statsTopAuthors => '热门作者';

  @override
  String get statsTopNarrators => '热门演播者';

  @override
  String get statsTopGenres => '热门类型';

  @override
  String get srvScannerSection => '扫描器';

  @override
  String get srvFindCovers => '查找封面';

  @override
  String get srvCoverProvider => '封面来源';

  @override
  String get srvParseSubtitles => '从文件名解析副标题';

  @override
  String get srvPreferMatched => '优先使用匹配的元数据';

  @override
  String get srvDisableWatcher => '禁用文件夹监视';

  @override
  String get srvStorageSection => '存储';

  @override
  String get srvStoreCover => '随项目保存封面';

  @override
  String get srvStoreMetadata => '随项目保存元数据';

  @override
  String get srvMetadataFormat => '元数据文件格式';

  @override
  String get srvFormatSection => '显示与格式';

  @override
  String get srvDateFormat => '日期格式';

  @override
  String get srvTimeFormat => '时间格式';

  @override
  String get srvLanguage => '服务器语言';

  @override
  String get srvChromecast => '支持 Chromecast';

  @override
  String get srvAllowIframe => '允许 iframe 嵌入';

  @override
  String get srvSortingSection => '排序';

  @override
  String get srvIgnorePrefixes => '排序时忽略前缀';

  @override
  String get srvSortingPrefixes => '排序前缀';

  @override
  String get srvAddPrefix => '添加前缀';

  @override
  String get srvSave => '保存设置';

  @override
  String get srvSavePrefixes => '保存前缀';

  @override
  String get srvSaved => '设置已保存';

  @override
  String get srvSaveFailed => '无法保存设置';

  @override
  String get srvPrefixesSaved => '排序前缀已更新';

  @override
  String get authSetLoadFailed => '无法加载身份验证设置';

  @override
  String get authSetCustomMessage => '登录页自定义提示';

  @override
  String get authSetMessage => '提示内容';

  @override
  String get authSetPasswordAuth => '密码验证';

  @override
  String get authSetOpenId => 'OpenID Connect 验证';

  @override
  String get authSetGuide => '设置指南';

  @override
  String get authSetIssuerUrl => '签发者 URL';

  @override
  String get authSetAutoPopulate => '自动填充';

  @override
  String get authSetAuthorizeUrl => '授权 URL';

  @override
  String get authSetTokenUrl => '令牌 URL';

  @override
  String get authSetUserinfoUrl => '用户信息 URL';

  @override
  String get authSetJwksUrl => 'JWKS URL';

  @override
  String get authSetLogoutUrl => '登出 URL';

  @override
  String get authSetClientId => '客户端 ID';

  @override
  String get authSetClientSecret => '客户端密钥';

  @override
  String get authSetSigningAlgorithm => '签名算法';

  @override
  String get authSetRedirectUris => '允许的移动端重定向 URI';

  @override
  String get authSetRedirectUrisInfo =>
      '登录后应用只能返回到这些地址。Absorb 使用 absorb://oauth。若只填一个星号（*），则允许任意地址。';

  @override
  String get authSetAddRedirectUri => '添加 URI';

  @override
  String get authSetAddAbsorbRedirect => '添加 absorb://oauth';

  @override
  String get authSetSubfolder => '重定向 URL 的子路径';

  @override
  String get authSetSubfolderNone => '无';

  @override
  String get authSetWebRedirectInfo => '在 OAuth 提供方中允许以下 URL，以便登录后返回网页应用：';

  @override
  String get authSetButtonText => '按钮文字';

  @override
  String get authSetMatchExisting => '匹配现有用户的方式';

  @override
  String get authSetMatchNone => '不匹配';

  @override
  String get authSetMatchEmail => '邮件';

  @override
  String get authSetMatchUsername => '用户名';

  @override
  String get authSetMatchExistingInfo => '用于关联现有用户。关联后，将按提供方的唯一 ID 匹配用户。';

  @override
  String get authSetAutoLaunch => '自动启动';

  @override
  String get authSetAutoLaunchInfo =>
      '从网页登录页自动打开提供方。加 /login?autoLaunch=0 可跳过。';

  @override
  String get authSetAutoRegister => '自动注册';

  @override
  String get authSetAutoRegisterInfo => '用户登录后自动创建新账户';

  @override
  String get authSetClaimsInfo => '留空则关闭分组与权限分配，新用户将获得“用户”角色。';

  @override
  String get authSetGroupClaim => '分组声明';

  @override
  String get authSetGroupClaimInfo =>
      '列出用户所属分组的声明，通常为 groups。名为 admin、user 或 guest 的分组会决定角色，取最高者。若无分组匹配，将拒绝登录。';

  @override
  String get authSetPermsClaim => '高级权限声明';

  @override
  String get authSetPermsClaimInfo =>
      '为非管理员用户提供权限的声明。缺少该声明会拒绝登录，缺少某项权限则按关闭处理。格式如下：';

  @override
  String get authSetRestartNote => '保存后请重启服务器以应用 OpenID Connect 更改。';

  @override
  String get authSetNoChanges => '没有需要保存的更改';

  @override
  String get authSetNeedOneMethod => '请至少开启一种登录方式';

  @override
  String authSetFieldRequired(String field) {
    return '$field 为必填项';
  }

  @override
  String authSetInvalidRedirectUri(String uri) {
    return '无效的重定向 URI：$uri';
  }

  @override
  String get authSetAsteriskAlone => '星号（*）必须是唯一的重定向 URI';

  @override
  String authSetInvalidClaim(String field) {
    return '$field 不是有效的声明名称';
  }

  @override
  String authSetIssuerFailed(String error) {
    return '无法读取签发者：$error';
  }

  @override
  String get libNoneYet => '暂无书库';

  @override
  String get libReorderFailed => '无法保存新顺序';

  @override
  String get libDeleteTitle => '删除书库？';

  @override
  String get libDeleteBody => '这会从服务器永久移除此书库及其所有项目。';

  @override
  String get libDeleted => '书库已删除';

  @override
  String get libDeleteFailed => '无法删除书库';

  @override
  String libFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件夹',
      one: '1 个文件夹',
    );
    return '$_temp0';
  }

  @override
  String get libNewTitle => '新建书库';

  @override
  String get libEditTitle => '编辑书库';

  @override
  String get libName => '书库名称';

  @override
  String get libMediaType => '媒体类型';

  @override
  String get libMediaBook => '书籍';

  @override
  String get libMediaPodcast => '播客';

  @override
  String get libProvider => '元数据来源';

  @override
  String get libIcon => '图标';

  @override
  String get libFolders => '文件夹';

  @override
  String get libAddFolder => '添加文件夹';

  @override
  String get libNoFolders => '请至少添加一个文件夹';

  @override
  String get libAdvanced => '高级设置';

  @override
  String get libCoverShape => '封面形状';

  @override
  String get libCoverSquare => '方形';

  @override
  String get libCoverStandard => '标准';

  @override
  String get libDisableWatcher => '禁用文件夹监视';

  @override
  String get libSkipAsin => '跳过已有 ASIN 的书籍匹配';

  @override
  String get libSkipIsbn => '跳过已有 ISBN 的书籍匹配';

  @override
  String get libHideSingleSeries => '隐藏单本书系列';

  @override
  String get libAudiobooksOnly => '仅有声书';

  @override
  String get libEpubScripted => '允许脚本化 ePub 内容';

  @override
  String get libLaterBooksOnly => '“继续收听系列”仅显示后续书籍';

  @override
  String get libPodcastRegion => '播客搜索区域';

  @override
  String get libMarkPercent => '完成百分比阈值';

  @override
  String get libMarkTime => '剩余秒数视为完成';

  @override
  String get libAutoScan => '自动扫描计划（cron）';

  @override
  String get libCreate => '创建书库';

  @override
  String get libUpdate => '保存更改';

  @override
  String get libNameRequired => '输入书库名称';

  @override
  String get libCreated => '书库已创建';

  @override
  String get libCreateFailed => '无法创建书库';

  @override
  String get libUpdated => '书库已更新';

  @override
  String get libUpdateFailed => '无法更新书库';

  @override
  String get libRemoveFoldersTitle => '移除文件夹？';

  @override
  String get libRemoveFoldersBody => '移除文件夹会从书库中删除其项目，且无法撤销。';

  @override
  String get readEbook => '阅读';

  @override
  String get ebookDownload => '下载';

  @override
  String get ebookDownloaded => '已下载';

  @override
  String get ebookSavedOffline => '已保存供离线阅读';

  @override
  String get ebookRemovedOffline => '已从离线中移除';

  @override
  String get ebookOfflineFailed => '无法下载电子书';

  @override
  String get ebookSaveToDevice => '保存到设备';

  @override
  String get ebookSaveToDeviceTitle => '保存到设备？';

  @override
  String get ebookSaveToDeviceBody =>
      '这会把电子书文件复制到你设备上的某个位置（由你选择）。这不会让书在阅读器中离线可用——如需离线请使用“下载”。';

  @override
  String get readerFormatUnsupported => '阅读器暂不支持此电子书格式';

  @override
  String get readerCouldNotOpen => '无法打开此电子书，文件可能已损坏。';

  @override
  String get moreActions => '更多';

  @override
  String get readerChapters => '章节';

  @override
  String get readerSettings => '阅读器设置';

  @override
  String get readerFontSize => '字号';

  @override
  String get readerLineSpacing => '行距';

  @override
  String get readerTextAlignment => '对齐';

  @override
  String get readerAlignJustified => '两端对齐';

  @override
  String get readerAlignLeft => '左对齐';

  @override
  String get readerSideMargins => '左右边距';

  @override
  String get readerTopBottom => '上下边距';

  @override
  String get readerPageLayout => '页面布局';

  @override
  String get readerPinTopBar => '始终显示标题和进度条';

  @override
  String get readerPinTopBarHint => '将它们固定在页面上方，而不是点击后才显示。页面会略微变短，避免遮挡文字。';

  @override
  String get readerTopBarProgress => '顶栏进度';

  @override
  String get readerTopBarProgressBook => '书籍';

  @override
  String get readerTopBarProgressChapter => '章节';

  @override
  String get readerTopBarProgressBoth => '两者';

  @override
  String get readerSectionText => '文字';

  @override
  String get readerSectionPage => '页码';

  @override
  String get readerSectionTopBar => '顶栏与屏幕';

  @override
  String get readerSectionControls => '控制项';

  @override
  String get readerSectionStats => '统计';

  @override
  String get readerParagraphSpacing => '段间距';

  @override
  String get readerParagraphSpacingBook => '书籍自带';

  @override
  String get readerTapZones => '点击区域';

  @override
  String get readerTapZonesHint => '拖动分隔线可调整方块大小。点击方块可修改其功能，也可从预设布局开始。';

  @override
  String get readerTapPrev => '上一页';

  @override
  String get readerTapNext => '下一页';

  @override
  String get readerTapMenu => '显示控制项';

  @override
  String get readerTapNothing => '无';

  @override
  String get readerTapKeepMenu => '必须有一个方块用于显示控制项';

  @override
  String get readerHideControls => '自动隐藏控制项';

  @override
  String get readerHideControlsNever => '从未';

  @override
  String get readerBarNotes => '笔记与划线';

  @override
  String readerHideControlsAfter(int seconds) {
    return '$seconds 秒';
  }

  @override
  String get playerDownloadStreamingInstead => '此下载无法播放，正在从服务器串流。重新下载可能解决问题。';

  @override
  String get readerPageTurn => '翻页效果';

  @override
  String get readerPageTurnNone => '无';

  @override
  String get readerPageTurnSlide => '滑动';

  @override
  String get readerPageTurnCurl => '卷曲';

  @override
  String get readerPageTurnRipple => '波纹';

  @override
  String get readerScrollMode => '滚动模式';

  @override
  String get readerScrollModeHint => '以滚动方式阅读，而不是翻页。对所有书籍生效。';

  @override
  String get readerKeepAwake => '保持屏幕常亮';

  @override
  String get readerKeepAwakeHint => '按自己的节奏阅读时防止屏幕超时熄灭。自动滚动和跟读时始终常亮。';

  @override
  String get readerLayoutAuto => '自动';

  @override
  String get readerLayoutSingle => '单页';

  @override
  String get readerLayoutTwoPage => '双页';

  @override
  String get readerTheme => '主题';

  @override
  String get readerFont => '字体';

  @override
  String get readerVolumeNav => '音量键翻页';

  @override
  String get readerVolumeNavOff => '关闭';

  @override
  String get readerVolumeNavNormal => '正常';

  @override
  String get readerVolumeNavMirrored => '反向';

  @override
  String get readerAutoScroll => '自动滚动';

  @override
  String get readerAutoScrollSubtitle => '下一页会从上到下覆盖本页——拖动屏幕中部可改变速度，点击可停止';

  @override
  String get readerAutoScrollStarted => '自动滚动已开始';

  @override
  String get readerAutoScrollPaused => '已暂停——长按停止';

  @override
  String get readerAutoScrollResumed => '自动滚动已继续';

  @override
  String get readerAutoScrollStopped => '自动滚动已关闭';

  @override
  String get readerAutoScrollEndOfBook => '已到书末——自动滚动关闭';

  @override
  String readerAutoScrollSpeed(int percent) {
    return '速度 $percent%';
  }

  @override
  String get readerMoreControls => '更多控制项';

  @override
  String get readerAutoScrollSleep => '自动滚动睡眠定时器';

  @override
  String get readerAutoScrollSleepHint => '一段时间后停止滚动并让屏幕熄灭。';

  @override
  String readerAutoScrollSleepMinutes(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String readerAutoScrollSleepLeft(int minutes) {
    return '剩余 $minutes 分钟';
  }

  @override
  String readerAutoScrollSleepIn(int minutes) {
    return '自动滚动将在 $minutes 分钟后停止';
  }

  @override
  String get readerAutoScrollSleepOff => '自动滚动睡眠定时器已关闭';

  @override
  String get readerAutoScrollSleepEnded => '睡眠定时器——自动滚动已关闭';

  @override
  String get readerDownloadStarted => '下载已开始';

  @override
  String get detailChaptersJumpTitle => '跳到本章？';

  @override
  String detailChaptersJumpContent(String title) {
    return '播放将跳转到《$title》。';
  }

  @override
  String get detailChaptersJump => '跳转';

  @override
  String detailChaptersFinished(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已完成 $count 章',
      one: '已完成 1 章',
    );
    return '$_temp0';
  }

  @override
  String detailOtherListeners(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 位其他听众',
      one: '1 位其他听众',
      zero: '没有其他听众',
    );
    return '$_temp0';
  }

  @override
  String get seriesUpNext => '接下来';

  @override
  String get seriesJumpToUpNext => '跳到队列下一项';

  @override
  String get seriesStatsFinished => '已完成';

  @override
  String get seriesStatsListened => '已收听';

  @override
  String get seriesStatsLeft => '左对齐';

  @override
  String seriesFinishedOf(int done, int total) {
    return '$total 中的 $done';
  }

  @override
  String get detailSessionsNone => '暂无收听记录';

  @override
  String detailSessionsAll(int count) {
    return '全部 $count 次收听';
  }

  @override
  String get readerVolumeNavWhilePlaying => '音频播放时也生效';

  @override
  String get readerMoreFonts => '下载更多字体';

  @override
  String get readerFontRemove => '移除下载';

  @override
  String readerFontDownloadFailed(String font) {
    return '无法下载 $font';
  }

  @override
  String get readerAnnotations => '标注';

  @override
  String readerHighlights(int count) {
    return '划线（$count）';
  }

  @override
  String readerBookmarks(int count) {
    return '书签（$count）';
  }

  @override
  String get readerNoHighlights => '暂无划线';

  @override
  String get readerHistory => '历史';

  @override
  String get sessionReading => '在读';

  @override
  String get readerHistoryEmpty => '你离开的页面会列在这里，方便随时返回。';

  @override
  String get readerHistoryClosed => '已关闭书籍';

  @override
  String get readerHistoryBeforeJump => '跳转前';

  @override
  String get readerHistoryBeforeSync => '匹配音频前';

  @override
  String get readerLogReading => '将阅读时间计入统计';

  @override
  String get readerLogReadingHint =>
      '把阅读器中的时间记录为会话，使其显示在统计中。在 Audiobookshelf 上会计入收听时间。';

  @override
  String get readerNoBookmarks => '暂无书签';

  @override
  String get readerBookmarkDefault => '书签';

  @override
  String get readerNoteTitle => '笔记';

  @override
  String get readerNoteHint => '添加笔记…';

  @override
  String get backupAndSync => '备份与同步';

  @override
  String get backupAndSyncSubtitle => '保存备份文件，或在多台设备间同步设置';

  @override
  String get syncSettingsExperimental => '实验性功能';

  @override
  String get syncSettingsExperimentalBody =>
      '同步功能仍在开发中。如果两台设备离线期间都做了修改，其中一方可能会丢失更改。请保留一份备份文件作为安全副本。';

  @override
  String get syncSettingsNeedServer => '需要一个服务器？';

  @override
  String get syncSettingsNeedServerSub =>
      '任何 WebDAV 服务器都可以。Nextcloud 是免费的自托管方案。';

  @override
  String get syncSettingsConnection => '连接';

  @override
  String get syncSettingsConnectionNotSet => '尚未设置';

  @override
  String get syncSettingsBackupFile => '备份文件';

  @override
  String get syncSettingsBackupFilePlain => '将所有内容保存到你保留的文件中。';

  @override
  String get syncSettingsBackupFileWithSync =>
      '将所有内容保存到你保留的文件中。包含登录信息，在另一台手机上恢复后也会在那里开启同步。';

  @override
  String get syncSettingsStatusOff => '未同步';

  @override
  String get syncSettingsStatusProblem => '无法连接你的服务器';

  @override
  String get syncSettings => '在设备间同步设置';

  @override
  String get syncSettingsExtras => '同时同步';

  @override
  String get syncSettingsIncludeRmab => 'ReadMeABook 设置';

  @override
  String get syncSettingsIncludeRmabSub => '将你的 ReadMeABook API 令牌放入同步文件';

  @override
  String get syncSettingsSubtitle => '通过你自己的 WebDAV 服务器保持设置同步';

  @override
  String get syncSettingsEnable => '同步设置';

  @override
  String get syncSettingsServerUrl => 'WebDAV 文件夹地址';

  @override
  String get syncSettingsServerUrlHint =>
      'https://cloud.example.com/remote.php/dav/files/you/Absorb';

  @override
  String get syncSettingsUsername => '用户名';

  @override
  String get syncSettingsPassword => '密码';

  @override
  String get syncSettingsHeaders => '自定义请求头（可选）';

  @override
  String get syncSettingsHeadersHint => '每行一个，例如 CF-Access-Client-Id: abc123';

  @override
  String get syncSettingsTest => '测试连接';

  @override
  String get syncSettingsHoldToUpload => '长按立即上传';

  @override
  String get syncSettingsUploadNow => '立即上传';

  @override
  String get syncSettingsDownloadNow => '立即下载';

  @override
  String get syncSettingsOk => '已连接';

  @override
  String get syncSettingsNoRemote => '已连接——尚未同步';

  @override
  String get syncSettingsAuthFailed => '用户名或密码错误';

  @override
  String get syncSettingsNetworkError => '无法访问该地址';

  @override
  String get syncSettingsNotConfigured => '请先填写地址、用户名和密码';

  @override
  String get syncSettingsTooLarge => '你的设置过大，无法同步';

  @override
  String get syncSettingsUploaded => '设置已上传';

  @override
  String get syncSettingsApplied => '设置已从你的其他设备更新';

  @override
  String syncSettingsAppliedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项设置已从你的其他设备更新',
      one: '$count 项设置已从你的其他设备更新',
    );
    return '$_temp0';
  }

  @override
  String get syncSettingsUpToDate => '已是最新';

  @override
  String syncSettingsLastSynced(String when) {
    return '上次同步 $when';
  }

  @override
  String get syncSettingsNever => '尚未同步';

  @override
  String navHoldPickTitle(String tab) {
    return '长按$tab将…';
  }

  @override
  String get navHoldPickBody => '选择长按此标签页的操作，之后可在设置中修改。';

  @override
  String get navHoldSettingTitle => '标签页长按快捷操作';

  @override
  String get navHoldSettingSubtitle => '各标签页长按的功能';

  @override
  String get navHoldAskNextTime => '下次询问';

  @override
  String get navHoldNothing => '无';

  @override
  String get navHoldPlayPause => '播放 / 暂停';

  @override
  String get navHoldOfflineMode => '离线模式';

  @override
  String get navHoldOfflineOn => '离线模式已开启';

  @override
  String get navHoldOfflineOff => '离线模式已关闭';

  @override
  String get navHoldMenu => '始终显示菜单';

  @override
  String get navHoldStop => '停止播放';

  @override
  String get navHoldRmabSearch => 'ReadMeABook 搜索';

  @override
  String get navHoldRmabRequests => '我的求书请求';

  @override
  String get navHoldRmabWeb => 'ReadMeABook 网站';

  @override
  String get navHoldAdd => '添加';

  @override
  String get navHoldMoveLeft => '左移';

  @override
  String get navHoldMoveRight => '右移';

  @override
  String get navHoldRemoveFromMenu => '从菜单移除';

  @override
  String get navHoldEditHint => '长按项目可移动或移除';

  @override
  String get navHoldResetMenu => '重置长按菜单项目';

  @override
  String get navHoldMenuReset => '菜单项目已重置';

  @override
  String get bookStatsAction => '收听统计';

  @override
  String get bookStatsYou => '你';

  @override
  String get bookStatsEveryone => '所有人';

  @override
  String get bookStatsListened => '收听时长';

  @override
  String get bookStatsSessions => '会话';

  @override
  String get bookStatsFirst => '首次收听';

  @override
  String get bookStatsLast => '最近收听';

  @override
  String get bookStatsListeners => '开始收听的人数';

  @override
  String get bookStatsFinishedCount => '听完的人数';

  @override
  String get bookStatsTotalTime => '所有人收听总时长';

  @override
  String get bookStatsNobody => '还没有人开始收听';

  @override
  String get bookStatsScanning => '正在扫描会话，可能需要一段时间…';

  @override
  String bookStatsScanningCount(int done, int total) {
    return '正在扫描会话，已完成 $done/$total 人…';
  }

  @override
  String bookStatsLastChecked(String when) {
    return '检查于 $when';
  }

  @override
  String get navHoldServerScan => '服务器扫描';

  @override
  String get navHoldScanAll => '扫描所有书库';

  @override
  String navHoldScanLibrary(String name) {
    return '扫描 $name';
  }

  @override
  String get navHoldScanStarted => '扫描已开始';

  @override
  String get navHoldScanFailed => '无法启动扫描';

  @override
  String get navHoldAdminLogs => '服务器日志';

  @override
  String navHoldAdminPage(String page) {
    return '管理：$page';
  }

  @override
  String get navHoldNothingPlaying => '暂无可播放内容';

  @override
  String get navHoldReadBook => '阅读当前书籍';

  @override
  String get navHoldBookDetails => '当前书籍详情';

  @override
  String get syncSourceTitle => '同步应保留哪一份？';

  @override
  String get syncSourceBody =>
      '此备份开启了设置同步。要使用服务器上次同步的版本，还是以此备份为准？选择备份会用它替换服务器上的副本，并影响所有已同步设备。';

  @override
  String get syncSourceUseServer => '服务器上次同步';

  @override
  String get syncSourceUseBackup => '此备份';

  @override
  String get syncSettingsWhatTravels =>
      '你的偏好设置、每本书的速度、首页布局、收听顺序、笔记和电子书划线会同步。登录信息、下载文件夹、自动下载开关、阅读器外观，以及尚未发送到服务器的内容会保留在本设备。';

  @override
  String get syncSettingsDownloadWarnTitle => '替换此设备的设置？';

  @override
  String get syncSettingsDownloadWarnBody => '同步副本将覆盖此设备上的设置。';

  @override
  String get syncSettingsDownloadWarnConfirm => '替换';

  @override
  String get readerCopied => '已复制到剪贴板';

  @override
  String get dictionaryNotFound => '未找到该词的定义。';

  @override
  String get dictionaryError => '无法连接词典。请检查网络。';

  @override
  String get dictionaryRetry => '重试';

  @override
  String get dictionarySearchWeb => '在网上搜索';

  @override
  String get readerTooltipCopy => '复制';

  @override
  String get readerTooltipSearch => '搜索';

  @override
  String get readerTooltipDefine => '查词';

  @override
  String get readerSearchHint => '在本书中搜索…';

  @override
  String readerSearchMatches(int count, String query) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个匹配“$query”',
      one: '$count 个匹配“$query”',
    );
    return '$_temp0';
  }

  @override
  String get readerSearchEmpty => '输入单词或短语并点击搜索。';

  @override
  String readerSearchNoResults(String query) {
    return '没有匹配“$query”的结果。';
  }

  @override
  String get transcriptionTitle => '转写';

  @override
  String get transcriptionAdvancedSubtitle => '用于转写书签，以及在有声书与电子书之间定位';

  @override
  String get transcriptionEnable => '启用转写';

  @override
  String get transcriptionEnableSubtitle =>
      '在书签中添加“转写”、在播放器中添加“在电子书中查找位置”、在阅读器中添加“在有声书中查找”';

  @override
  String get transcriptionDisclaimer =>
      '完全在设备上运行，不会向任何地方发送数据。运行时会额外耗电并占用处理能力，且仅已下载的书籍可转写。';

  @override
  String get transcriptionNeedModelHint => '下载下方模型即可开始转写。';

  @override
  String get transcriptionModelSection => '模型';

  @override
  String get transcriptionModelTiny => '极小';

  @override
  String get transcriptionModelTinyDesc => '最快，准确度较低。约 31 MB。';

  @override
  String get transcriptionModelBase => '基础';

  @override
  String get transcriptionModelBaseDesc => '折中选择。约 57 MB。';

  @override
  String get transcriptionModelSmall => '小';

  @override
  String get transcriptionModelSmallDesc => '较慢但最准确——适合高端手机。约 182 MB。';

  @override
  String get transcriptionAutoHint =>
      '下载多个模型后，不同任务会自动选择。含电子书的书籍使用最快的模型，因为准确文字本就来自电子书；不含电子书的书籍使用最准确的模型——但跟读除外，它保持在“小”以下以便跟上朗读。';

  @override
  String get transcriptionDownload => '下载';

  @override
  String get transcriptionDownloadFailed => '下载失败。请检查网络后重试。';

  @override
  String get transcribe => '转写';

  @override
  String get transcribing => '正在转写…';

  @override
  String get transcriptionResultTitle => '字幕';

  @override
  String get transcriptionSaveToNote => '保存到笔记';

  @override
  String get transcriptionSavedToNote => '已保存到书签备注';

  @override
  String get transcriptionDisabledHint => '请在“设置 > 高级”中开启书签转写。';

  @override
  String get transcriptionNoModelDownloaded => '请先在设置中下载转写模型。';

  @override
  String get transcriptionNotDownloadedBook => '请下载此书或连接服务器后再转写。';

  @override
  String get transcriptionNoMetadataMsg => '无法在下载文件中定位此处。请尝试重新下载此书。';

  @override
  String get transcriptionBusyMsg => '正在转写其他内容，请稍候。';

  @override
  String get transcriptionEmptyMsg => '此处未检测到语音。';

  @override
  String get transcriptionFailedMsg => '无法转写此处，请重试。';

  @override
  String get transcriptionPlaySnippet => '试听';

  @override
  String get transcriptionPauseSnippet => '暂停';

  @override
  String get transcriptionIntroBody =>
      '它会从书签稍前的位置开始，听取所选长度的音频并在设备上转为文字。片段越长耗时越久，转写并非 100% 准确。完成后文字会保存到书签备注，可直接修改或分享。';

  @override
  String get transcriptionUseEbookText => '能匹配时使用电子书的原文';

  @override
  String get lyricsMode => '实时字幕';

  @override
  String get lyricsListeningAhead => '正在预听…';

  @override
  String get lyricsDisplaySection => '实时字幕';

  @override
  String get lyricsFontSize => '行字号';

  @override
  String get lyricsMaxLines => '显示行数';

  @override
  String get lyricsFullCover => '使用整张封面';

  @override
  String get lyricsFullCoverHint => '运行时用字幕替换封面画面，并按可用空间尽可能多显示行数。';

  @override
  String get lyricsBatteryInfo => '实时字幕和跟读运行时会额外耗电并占用处理能力。处理器较慢的手机上，文字出现可能更慢。';

  @override
  String get lyricsClearCache => '清除字幕缓存';

  @override
  String lyricsClearCacheHint(String size) {
    return '已保存 $size 的字幕行。已清除的书籍和单集会在收听时重新转写。';
  }

  @override
  String get lyricsClearCacheConfirm => '删除所有书籍和单集的已保存字幕？收听时会自动重新生成。';

  @override
  String get lyricsCacheCleared => '字幕缓存已清除';

  @override
  String get lyricsIntroBody =>
      '它会略微提前听取朗读，并在每句话说出时显示文字，全部在手机上转写，不会离开设备。开启后请先等几秒再按播放，让它抢占先机。字幕准备好后才会显示，从暂停状态开始运行最顺畅。运行时会额外耗电并占用处理能力。';

  @override
  String lyricsBuildingLead(String percent) {
    return '正在预听朗读…$percent';
  }

  @override
  String lyricsCantKeepUp(String speed) {
    return '以 $speed 速度播放时转写跟不上';
  }

  @override
  String get lyricsTurnOn => '开启';

  @override
  String get readAlong => '跟读';

  @override
  String get readAlongNeedsPlaying => '请先播放此书的有声书';

  @override
  String get narrationListen => '试听';

  @override
  String get narrationPlayFromHere => '从此处播放';

  @override
  String get narrationPreparing => '正在准备朗读音频';

  @override
  String get narrationNone => '此电子书没有可播放的朗读';

  @override
  String get narrationDownloadTitle => '下载后收听';

  @override
  String get narrationDownloadBody =>
      '此书的 EPUB3 可自行朗读。Audiobookshelf 无法直接串流其朗读音频，需先下载再播放。';

  @override
  String get narrationDownloadStarted => '正在下载朗读音频。完成后点击 Absorb。';

  @override
  String get narrationTextBody =>
      '此书的 EPUB 已包含音频每一刻对应的文字，因此可直接从书中复制。请选择要加入书签备注的长度。';

  @override
  String get narrationTextLoading => '正在从书中获取文字';

  @override
  String get downloadToAbsorb => '下载到 Absorb';

  @override
  String get narrationUpNextTitle => '下载队列下一项';

  @override
  String narrationUpNextBody(String title) {
    return '队列下一项是《$title》。它是可自行朗读的 EPUB3，需先下载才能播放。';
  }

  @override
  String narrationQueueStopped(String title) {
    return '已在《$title》之前停止。下载后可继续。';
  }

  @override
  String get transcriptionNeedsDownload => '这需要音频在手机上。现在下载？';

  @override
  String get transcriptionDownloadStarted => '正在下载。完成后请再次开启';

  @override
  String get readAlongFollow => '跟读跟随';

  @override
  String get syncReadingListening => '保持阅读与收听同步';

  @override
  String get syncReadingListeningHint =>
      '适用于同时有有声书和电子书的书籍。停止收听时，电子书会移动到停止位置；离开阅读器时，有声书会移动到你的页面。只会向前移动。';

  @override
  String get syncEbookMoved => '电子书已移动到停止收听的位置';

  @override
  String get syncAudioMoved => '有声书已移动到停止阅读的位置';

  @override
  String get syncAudioOffer => '点击跳转到停止阅读的位置';

  @override
  String get syncFindingAudio => '正在有声书中查找你的页面';

  @override
  String get syncFindingEbook => '正在电子书中查找你的位置';

  @override
  String get syncFailed => '无法同步你的位置';

  @override
  String get syncAlreadyTogether => '已同步';

  @override
  String get syncPosition => '同步位置';

  @override
  String get readAlongFollowHint => '单词时间根据字幕时间戳推算，句内可能有轻微偏移。';

  @override
  String get readAlongFollowWord => '单词';

  @override
  String get readAlongFollowSentence => '句子';

  @override
  String get readAlongColor => '跟读颜色';

  @override
  String get readAlongLost => '无法在页面中找到对应的朗读位置';

  @override
  String get readAlongBackToNarration => '返回朗读';

  @override
  String get findInEbook => '在电子书中查找';

  @override
  String get findInEbookSearching => '正在电子书中查找此处…';

  @override
  String get findInEbookNotFound => '无法在电子书中找到此处。';

  @override
  String get findInEbookNeedsEpub => '“在电子书中查找”需要 EPUB 电子书。';

  @override
  String get findInEbookNoEbook => '此书没有电子书。';

  @override
  String get findInAudiobook => '在有声书中查找';

  @override
  String get findInAudiobookSearching => '正在有声书中查找此处…';

  @override
  String get findInAudiobookStillSearching => '仍在音频中搜索此处…';

  @override
  String get findInAudiobookSearchingLong => '章节较长，仍在搜索。可能需要一两分钟…';

  @override
  String get findInAudiobookNotFound => '无法在有声书中找到此处。';

  @override
  String get transcriptionWhisperInfo =>
      '转写由 Whisper 提供支持，这是一种开源语音识别模型，会听取朗读并写出文字——全部在本设备上完成。';

  @override
  String get transcriptionWhisperLearnMore => '了解 Whisper';

  @override
  String get findInAudiobookIntroBody =>
      '它会听取你阅读位置附近的有声书，并与这段文字匹配，全部在设备上完成。最长可能需要一分钟。如果无法确信匹配，则不会移动位置。';

  @override
  String get findInAudiobookAfterLabel => '找到位置后';

  @override
  String get findInAudiobookStay => '继续阅读';

  @override
  String get findInAudiobookGoPlayer => '打开播放器';

  @override
  String get findInAudiobookPlaying => '正在有声书中播放此段';

  @override
  String get catchUpAudioAhead => '有声书进度更靠后。点击前往。';

  @override
  String get catchUpPageAhead => '此页进度快于有声书。点击将有声书移到这里。';

  @override
  String get readerShortcutButton => '快捷按钮';

  @override
  String get keepScreenOn => '保持屏幕常亮';

  @override
  String get keepScreenOnActive => '屏幕保持常亮';

  @override
  String get keepScreenOnUntilClosed => '屏幕将常亮直到关闭应用';

  @override
  String get keepScreenOnOff => '屏幕可再次熄灭';

  @override
  String get keepScreenOnOffUntilRestart => '应用重启前保持关闭。设置中的开关仍为开启';

  @override
  String get keepScreenOnPlayer => '播放器中保持屏幕常亮';

  @override
  String get keepScreenOnPlayerSubtitle => '播放器打开时屏幕保持常亮';

  @override
  String get keepScreenOnCarMode => '车机模式中保持屏幕常亮';

  @override
  String get keepScreenOnCarModeSubtitle => '车机模式打开时屏幕保持常亮';

  @override
  String get loginServerType => '服务器类型';

  @override
  String get authBookOrbitDefaultPassword =>
      '此账户仍在使用默认密码。请在 BookOrbit 中修改后重新登录。';

  @override
  String get authBookOrbitPasswordOff => '此服务器已关闭密码登录。请使用魔法链接或单点登录。';

  @override
  String get authServerIsBookOrbit => '这是 BookOrbit 服务器。请在服务器地址上方选择 BookOrbit。';

  @override
  String get authServerIsAudiobookshelf =>
      '这是 Audiobookshelf 服务器。请在服务器地址上方选择 Audiobookshelf。';

  @override
  String get castNotAvailableBookOrbit => 'BookOrbit 服务器不支持投屏';

  @override
  String get loginMagicLink => '魔法链接';

  @override
  String get loginMagicLinkDescription => '使用 BookOrbit 魔法链接代替密码登录。';

  @override
  String get collectionPublicTitle => '公开';

  @override
  String get collectionPublicSubtitle => '此服务器上的所有人都能看到此收藏';

  @override
  String loginSignInWithProvider(String provider) {
    return '使用 $provider 登录';
  }

  @override
  String get loginSignInWithSso => '使用 SSO 登录';

  @override
  String get loginChooseSsoProvider => '选择登录方式';

  @override
  String get loginRedirectUriBookOrbit => '重定向 URI：bookorbit://oauth2-callback';

  @override
  String get readStatusTitle => '阅读状态';

  @override
  String get readStatusHint => 'BookOrbit 会保留你在此选择的状态，直到你更改。';

  @override
  String get readStatusUnread => '未读';

  @override
  String get readStatusWantToRead => '想读';

  @override
  String get readStatusReading => '在读';

  @override
  String get readStatusOnHold => '搁置';

  @override
  String get readStatusRereading => '重读';

  @override
  String get readStatusRead => '阅读';

  @override
  String get readStatusSkimmed => '略读';

  @override
  String get readStatusAbandoned => '弃读';

  @override
  String get personalNoteTitle => '你的笔记';

  @override
  String get personalNoteAdd => '添加私密笔记';

  @override
  String get personalNoteHint => '只有你能看到此笔记。';

  @override
  String get moreLikeThis => '更多类似内容';

  @override
  String get coverSlotAudiobook => '有声书封面';

  @override
  String get coverSlotBook => '书籍封面';

  @override
  String get cardButtonFill => '按钮背景';

  @override
  String get cardButtonFillSubtitle => '播放器卡片按钮的填充方式';

  @override
  String get cardButtonFillClear => '透明';

  @override
  String get cardButtonFillSubtle => '淡色';

  @override
  String get cardButtonFillSolid => '实色';

  @override
  String get loginBookOrbitPreview =>
      'BookOrbit 支持是新功能。播放、下载和浏览均可使用，但部分界面可能仍与 Audiobookshelf 相同。可在 GitHub 上关注进度，如有异常请告诉我们。';

  @override
  String get signedOutTapToSignIn => '已退出登录。点击重新登录。';

  @override
  String get authSignedOutKeepListening => '你已退出登录。下载内容仍可播放。点击红色云图标可重新登录。';

  @override
  String signedOutSyncNote(String username, String server) {
    return '未登录期间收听的内容会保留在此手机上，并以 $username 身份重新登录 $server 后同步。该账户的任意登录方式均可。';
  }

  @override
  String get comicReadingDirection => '阅读方向';

  @override
  String comicPageNumber(int page) {
    return '第 $page 页';
  }

  @override
  String get comicBookmarkRemoveFailed => '无法从服务器移除书签。请联网后重试。';

  @override
  String get comicLeftToRight => '从左到右';

  @override
  String get comicRightToLeft => '从右到左（漫画）';

  @override
  String get comicNeedsConnection => '此漫画从服务器逐页加载，需要网络连接。';

  @override
  String get comicNoPages => '此漫画中未找到页面。';
}
