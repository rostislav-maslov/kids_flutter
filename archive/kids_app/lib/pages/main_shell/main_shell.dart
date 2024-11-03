import 'package:flutter/material.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state_manager.dart';
import 'package:ftl_flutter_shell_lib/router/mini_app/base/shell.dart';
import 'package:ftl_flutter_shell_lib/router/mini_app/shell/bottom_tab/ui/scaffold_with_nav_bar_tab_item.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/pages/main_shell/tabs/profile_tab.dart';
import 'package:kids_app/ui/layouts/base_bottom_tab/base_bottom_tab.dart';
import 'package:kids_app/pages/main_shell/tabs/home_tab.dart';

/// Это Shell для для таббара главного экрана. содержит в себе все страницы приложения
class MainShell extends Shell {
  List<BaseBottomTab> tabs = [];
  static final MainShell _instance = MainShell();
  static const String sShellKey = 'app';

  MainShell() : super(key: sShellKey, title: 'title') {
    // страницы, которые используются в таббаре
    tabs.add(HomeTab());
    tabs.add(ProfileTab());

    for (var tab in tabs) {
      tab.initTabUrl();
    }

    initUrl();
  }

  static MainShell instance() {
    return _instance;
  }

  /// TODO НЕ РАБОЧИЙ КОД в либе
  /// ПРИ ИНИЦИИЛИЗАЦИИ TABS = 0
  /// СЛИШКОМ МНОГО ПОПЫТОК ПРОИНИЦИЛИИРОВАТЬ ТАБ УРЛ
  @override
  initUrl() {
    for (BaseBottomTab tab in tabs) {
      tab.initTabUrl();
    }

    if (tabs.isNotEmpty) {
      initialUrl = tabs.first.initialLocation;
    }
  }

  @override
  RouteBase route(StateManager stateManager) {
    List<ScaffoldWithNavBarTabItem> tabItems = [];
    List<GoRoute> goRoutes = [];

    String firstTab = "";
    for (BaseBottomTab tab in tabs) {
      tab.initTabItem();

      tabItems.add(tab.tabItem);
      //tab.page.parentNavigatorKey = miniAppNavigatorKey;

      goRoutes.add(tab.goRoute(null, stateManager));

      if (firstTab == "") firstTab = tab.initialLocation;
    }

    if (true == false) {
      return StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ScaffoldWithNestedNavigation(
              navigationShell: navigationShell,
            );
          },
          branches: goRoutes
              .map(
                (e) => StatefulShellBranch(
                    routes: [e],
                    navigatorKey:
                        GlobalKey<NavigatorState>(debugLabel: 'shellB')),
              )
              .toList());
    }

    return ShellRoute(
        builder: (context, state, child) {
          return child;
        },
        routes: [
          GoRoute(
              path: key,
              redirect: (_, goRouterState) {
                /// это сделано для того, что бы роут не перехватывал
                /// вложенные страницы когда работаем с шеллроут
                if (goRouterState.fullPath == initialUrl) {
                  return firstTab;
                }
                return goRouterState.fullPath;
              },

              /// просто пустой виджет, в случае с таким видом миниапов,
              /// нужно переходить сразу на конкретную страницу таба
              builder: (_, __) => const Text(""),
              // routes: goRoutes
              routes: [
                /// Обязательно нужно зашивать все в ShellRoute для защиты навигации
                /// и для ScaffoldWithBottomNavBar который будет для каждого
                /// внутреннего урла
                StatefulShellRoute.indexedStack(
                    builder: (context, state, navigationShell) {
                      return ScaffoldWithNestedNavigation(
                        navigationShell: navigationShell,
                      );
                    },
                    branches: goRoutes
                        .map(
                          (e) => StatefulShellBranch(
                              routes: [e],
                              navigatorKey: GlobalKey<NavigatorState>(
                                  debugLabel: 'shellB')),
                        )
                        .toList()),
                // ShellRoute(
                //   navigatorKey: miniAppNavigatorKey,
                //   builder: (context, state, child) {
                //     /// WillPopScope - обязательно исопльзовать что бы свайп
                //     /// назад не срабатывал ложно
                //     return WillPopScope(
                //       child: MainBottomNavigationLayout(
                //           // костыль придуман (но это такой костыль что капец)
                //           isChild: state.topRoute?.path != state.matchedLocation,
                //           child: child),
                //       onWillPop: () async => true,
                //     );
                //     // return MainBottomNavigationLayout(
                //     //     // костыль придуман (но это такой костыль что капец)
                //     //     isChild: state.topRoute?.path != state.matchedLocation,
                //     //     child: child);
                //   },
                //   routes: goRoutes,
                // )
              ])
        ]);
  }
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Section A', icon: Icon(Icons.home)),
          NavigationDestination(label: 'Section B', icon: Icon(Icons.settings)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
