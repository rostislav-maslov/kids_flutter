import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/pages/auth_complete_avatar_page/auth_complete_avatar_page.dart';
import 'package:kids_app/pages/auth_complete_done_page/auth_complete_done_page.dart';
import 'package:kids_app/pages/auth_complete_name_page/auth_complete_name_page.dart';
import 'package:kids_app/pages/auth_complete_old_page/auth_complete_old_page.dart';
import 'package:kids_app/pages/auth_complete_sex_page/auth_complete_sex_page.dart';
import 'package:kids_app/pages/default_error_page/default_error_page.dart';
import 'package:kids_app/pages/auth_page/auth_page_widget.dart';
import 'package:kids_app/pages/home_page/home_page_widget.dart';
import 'package:kids_app/pages/load_page/load_widget.dart';
import 'package:kids_app/pages/my_task_page/my_task_page_widget.dart';
import 'package:kids_app/pages/onboarding_page/onboarding_page_widget.dart';
import 'package:kids_app/pages/profile_edit_page/profile_edit_page_widget.dart';
import 'package:kids_app/pages/profile_page/profile_page_widget.dart';
import 'package:kids_app/pages/rewards_page/rewards_page_widget.dart';
import 'package:kids_app/commons/route_url.dart';

class KidsAppRouter {
  static late KidsAppRouter instance;

  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouterWidgetBuilder errorBuilder =
      ((context, state) => const DefaultErrorPage());

  static void setup() {
    instance = KidsAppRouter();
  }

  GoRouter router() {
    final config = GoRouter(
        initialLocation: RouteUrl.instance.loading.relative,
        navigatorKey: rootNavigatorKey,
        errorBuilder: errorBuilder,
        routes: [
          GoRoute(
              path: RouteUrl.instance.loading.relative,
              builder: (context, state) {
                return LoadWidget();
              }),
          GoRoute(
              path: RouteUrl.instance.onboarding.relative,
              builder: (context, state) {
                return OnboardingPageWidget();
              }),
          GoRoute(
              path: RouteUrl.instance.auth.relative,
              builder: (context, state) {
                return AuthPageWidget();
              }),
          GoRoute(
              path: RouteUrl.instance.authCompleteOld.relative,
              builder: (context, state) {
                return AuthCompleteOldPage();
              },
              routes: [
                GoRoute(
                    path: RouteUrl.instance.authCompleteAvatar.relative,
                    builder: (context, state) {
                      return AuthCompleteAvatarPage();
                    }),
                GoRoute(
                    path: RouteUrl.instance.authCompleteSex.relative,
                    builder: (context, state) {
                      return AuthCompleteSexPage();
                    }),
                GoRoute(
                    path: RouteUrl.instance.authCompleteDone.relative,
                    builder: (context, state) {
                      return AuthCompleteDonePage();
                    }),
                GoRoute(
                    path: RouteUrl.instance.authCompleteName.relative,
                    builder: (context, state) {
                      return AuthCompleteNamePage();
                    })
              ]),
          GoRoute(
              path: RouteUrl.instance.home.relative,
              builder: (context, state) {
                return HomePageWidget();
              }),
          GoRoute(
              path: RouteUrl.instance.myTask.relative,
              builder: (context, state) {
                return MyTaskPageWidget();
              }),
          GoRoute(
              path: RouteUrl.instance.profile.relative,
              builder: (BuildContext context, GoRouterState state) {
                return ProfilePageWidget();
              },
              routes: [
                GoRoute(
                    path: RouteUrl.instance.profileEdit.relative,
                    builder: (BuildContext context, GoRouterState state) {
                      return ProfileEditPageWidget();
                    })
              ]),
          GoRoute(
              path: RouteUrl.instance.rewards.relative,
              builder: (context, state) {
                return RewardsPageWidget();
              }),
        ]);

    return config;
  }
}
