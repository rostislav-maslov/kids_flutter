import 'package:flutter/material.dart';
import 'package:ftl_flutter_authorization/authorization.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state_manager.dart';
import 'package:ftl_flutter_shell_lib/router/mini_app/base/default_error_page.dart';
import 'package:ftl_flutter_uikit/atoms/colors/theme/theme.dart';
import 'package:ftl_flutter_uikit/atoms/colors/theme/theme_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/infrastructure/state/kids_app_state_manager.dart';
import 'package:provider/provider.dart';

import 'infrastructure/base/constants.dart';
import 'mini_app_router.dart';

void main() async {
  /// ENV константы
  await Constants.init();

  /// Repository Schemes
  //BaseDBRepository.setupScheme(HostInfoEntitySchema);
  //BaseDBRepository.setupScheme(UserInfoEntitySchema);

  /// States
  await KidsAppStateManager.setup();

  /// Иници
  KidAppRouter.instance(KidsAppStateManager.instance()).showAllPages();

  // Настройки GoRouter - Позволяет методам push и pop, работать с URL
  GoRouter.optionURLReflectsImperativeAPIs = true;

  // Запускаем приложение
  // runApp(ChangeNotifierProvider<FTThemeProvider>(
  //   create: (context) => FTThemeProvider(defaultColor: FTTheme.mainColor),
  //   child: GoRouterTest(
  //     stateManager: KidsAppStateManager.instance(),
  //   ),
  // ));
  runApp(ChangeNotifierProvider<FTThemeProvider>(
    create: (context) => FTThemeProvider(defaultColor: FTTheme.mainColor),
    child: GoRouterTest(
      stateManager: KidsAppStateManager.instance(),
    ),
  ));
}

class TosterApp extends StatelessWidget {
  /// Constructs a [TosterApp]
  const TosterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FTThemeProvider>(builder: (context, provider, child) {
      return MaterialApp.router(
        title: 'Management App',
        theme: FTTheme.light(primary: provider.seedColor),
        darkTheme: FTTheme.dark(primary: provider.seedColor),
        themeMode: FTTheme.mode,
        routerConfig:
            KidAppRouter.instance(KidsAppStateManager.instance()).router(),
      );
    });
  }
}

//----------------------

class GoRouterTest extends StatelessWidget {
  final StateManager stateManager;
  static var rootNavigatorKey = GlobalKey<NavigatorState>();
  static var shellNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouterWidgetBuilder? errorBuilder =
      ((context, state) => const DefaultErrorPage());

  const GoRouterTest({super.key, required this.stateManager});

  @override
  Widget build(BuildContext context) {
    return Consumer<FTThemeProvider>(builder: (context, provider, child) {
      return MaterialApp.router(
          title: "",
          theme: FTTheme.light(primary: provider.seedColor),
          darkTheme: FTTheme.dark(primary: provider.seedColor),
          themeMode: FTTheme.mode,
          routerConfig: GoRouter(
              initialLocation: '/',
              navigatorKey: rootNavigatorKey,
              errorBuilder: errorBuilder,
              routes: [
                ShellRoute(
                  navigatorKey: shellNavigatorKey,
                  builder: (context, state, child) {
                    return child;
                  },
                  routes: [
                    GoRoute(
                        path: '/',
                        builder: (_, __) {
                          return TestScPage(
                              title: "root", url: '/choice-company');
                        },
                        routes: []),
                  ],
                )
              ]));
    });
  }
}

class TestScPage extends StatelessWidget {
  final String title;
  final String url;
  const TestScPage({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          OutlinedButton(
              onPressed: () {
                context.push(url);
              },
              child: Text('$title - $url'))
        ],
      ),
    );
  }
}
