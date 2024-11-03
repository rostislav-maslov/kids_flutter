import 'package:ftl_flutter_authorization/authorization.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state_manager.dart';
import 'package:ftl_flutter_shell_lib/router/mini_app/mini_app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/infrastructure/state/kids_app_state_manager.dart';
import 'package:kids_app/pages/home_page/home_page.dart';
import 'package:kids_app/pages/load_page/load_widget.dart';
import 'package:kids_app/pages/main_shell/main_shell.dart';
import 'package:kids_app/pages/onboarding_page/onboarding_page.dart';
import 'package:kids_app/pages/profile_page/profile_page.dart';

class KidAppRouter extends MiniAppRouter {
  static KidAppRouter? _instance;

  static void _setup(StateManager stateManager) {
    _instance = KidAppRouter(
        stateManager: stateManager,
        rootPage: const LoadWidget(),
        otherPages: [
          Authorization.initRoutes(KidsAppStateManager.instance().authState),
          OnboardingPage.instance
              .goRoute(MiniAppRouter.rootNavigatorKey, stateManager),
          HomePage.instance
              .goRoute(MiniAppRouter.rootNavigatorKey, stateManager),
          ProfilePage.instance
              .goRoute(MiniAppRouter.rootNavigatorKey, stateManager)
        ],
        miniApps: []);
  }

  static KidAppRouter instance(StateManager stateManager) {
    if (_instance != null) {
      return _instance!;
    }
    _setup(stateManager);
    return _instance!;
  }

  KidAppRouter(
      {required super.rootPage,
      required super.otherPages,
      required super.stateManager,
      required super.miniApps});
}
