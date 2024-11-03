import 'package:flutter/material.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state_manager.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_shell_lib/router/base/router_url_config.dart';
import 'package:ftl_flutter_shell_lib/router/mini_app/base/bottom_tab.dart';
import 'package:go_router/go_router.dart';

/// Элемент одного таба для  base_bottom_shell
class BaseBottomTab extends BottomTab {
  /// Это ROOT страница для конкретного таба. Вся остальная иерархия выстраивается
  /// внутри GoRouterPage. Хотите идти в глубь, стройте GoRouterPage
  GoRoutePage page;

  BaseBottomTab(
      {required String label,
      required dynamic icon,
      required String tabKey,
      required this.page})
      : super(label: label, icon: icon, tabKey: tabKey);

  /// заполняет дополнительно все нужные поля
  @override
  initTabUrl() {
    tabUrl = RouterUrlConfig.urlWithSlash('$tabKey/${page.path}');
    initialLocation = RouterUrlConfig.urlWithSlash('$tabKey/${page.path}');
  }

  /// роут конкретного таба
  @override
  GoRoute goRoute(GlobalKey<NavigatorState>? parentNavigatorKey,
      StateManager stateManager) {
    return page.goRoute(parentNavigatorKey, stateManager);
  }
}
