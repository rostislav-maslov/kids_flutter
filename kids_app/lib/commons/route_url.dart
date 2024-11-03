class RouteUrl {
  final UrlConfig loading = UrlConfig(absolute: '/', relative: '/');
  final UrlConfig onboarding = UrlConfig(absolute: '/onboarding', relative: '/onboarding');
  final UrlConfig auth = UrlConfig(absolute: '/auth', relative: '/auth');
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