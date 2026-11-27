/// Identity of this build.
///
/// This app is a modified fork of Absorb (https://github.com/pounat/absorb,
/// GPL-3.0-or-later). Set [kForkRepo] to your own GitHub repository before
/// publishing; it drives the in-app updater and the "report an issue" link.
const String kForkRepo = 'akak5877/absorb-fork';

const String kUpstreamRepo = 'pounat/absorb';

const String kForkUrl = 'https://github.com/$kForkRepo';

const String kUpstreamUrl = 'https://github.com/$kUpstreamRepo';

/// True once [kForkRepo] has been edited. The fork is signed with its own key
/// and installs under its own applicationId, so it must never offer the
/// upstream APK as an update - self-updates stay off until the repo exists.
final bool kForkConfigured = !kForkRepo.startsWith('YOUR_GITHUB_USER/');

/// Where "bugs and feature requests" should go. Falls back to upstream while
/// the fork repository is not configured, so the link is never dead.
String get kIssuesUrl =>
    kForkConfigured ? '$kForkUrl/issues' : '$kUpstreamUrl/issues';

/// Where the in-app updater looks for releases. Empty disables the check.
String get kUpdateRepo => kForkConfigured ? kForkRepo : '';
