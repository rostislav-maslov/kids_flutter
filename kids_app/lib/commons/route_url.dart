class RouteUrl {
  final UrlConfig loading = UrlConfig(absolute: '/', relative: '/');
  final UrlConfig onboarding = UrlConfig(absolute: '/onboarding', relative: '/onboarding');
  final UrlConfig auth = UrlConfig(absolute: '/auth', relative: '/auth');
  final UrlConfig authCompleteOld = UrlConfig(absolute: '/complete', relative: '/complete');
  final UrlConfig authCompleteSex = UrlConfig(absolute: '/complete/sex', relative: '/sex');
  final UrlConfig authCompleteName = UrlConfig(absolute: '/complete/name', relative: '/name');
  final UrlConfig authCompleteAvatar = UrlConfig(absolute: '/complete/avatar', relative: '/avatar');
  final UrlConfig authCompleteDone = UrlConfig(absolute: '/complete/done', relative: '/done');
  final UrlConfig profile = UrlConfig(absolute: '/profile', relative: '/profile');
  final UrlConfig profileEdit = UrlConfig(absolute: '/profile/edit', relative: '/edit');
  final UrlConfig home = UrlConfig(absolute: '/home', relative: '/home');
  final UrlConfig myTask = UrlConfig(absolute: '/my-task', relative: '/my-task');
  final UrlConfig rewards = UrlConfig(absolute: '/rewards', relative: '/rewards');

  static RouteUrl instance = RouteUrl();

  RouteUrl();
}

class UrlConfig {
  final String absolute;
  final String relative;

  const UrlConfig({required this.absolute, required this.relative});
}