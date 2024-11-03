import 'package:flutter/material.dart';
import 'package:ftl_flutter_core_lib/infrastructure/db/user_info/entity/user_info_entity.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/auth/state/auth_state.dart';
import 'package:ftl_flutter_core_lib/utils/extensions/async_snapshot_extensions.dart';
import 'package:ftl_flutter_uikit/atoms/avatars/avatars.dart';
import 'package:ftl_flutter_uikit/layouts/base/layout_navigation_destination.dart';
import 'package:ftl_flutter_uikit/layouts/bottom_navigation_layout.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/pages/main_shell/main_shell.dart';
import 'package:provider/provider.dart';

/// Layout который строит главный экран с BottomNavigtaion
class MainBottomNavigationLayout extends StatefulWidget {
  final Widget child;
  final bool isChild;

  const MainBottomNavigationLayout(
      {super.key, required this.child, required this.isChild});

  @override
  State<MainBottomNavigationLayout> createState() =>
      _MainBottomNavigationLayoutState();
}

class _MainBottomNavigationLayoutState
    extends State<MainBottomNavigationLayout> {
  final MainShell shell = MainShell.instance();
  final Avatars avatar = Avatars.random;

  int get _currentIndex => _locationToTabIndex(
      GoRouter.of(context).routeInformationProvider.value.uri.path);

  /// определение таба по локации(урлу)
  int _locationToTabIndex(String location) {
    final index = shell.tabs.indexWhere(
        (t) => t.initialLocation != "/" && location.startsWith(t.tabUrl));

    // if index not found (-1), return 0
    return index < 0 ? 1 : index;
  }

  /// Callback - на одну из кнопок для навигации
  /// Тут предусмотрена возможность "запоминания" внутренней страницы,
  /// куда нужно переходить
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex == 0) {
      GoRouter.of(context).go(shell.tabs[tabIndex].initialLocation);
    }

    if (tabIndex != _currentIndex) {
      GoRouter.of(context).go(shell.tabs[tabIndex].tabUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationLayout(
        title: Consumer<AuthState>(builder: (context, state, child) {
          return const Text('Привет, ...');
        }),
        actions: [
          const SizedBox(width: 16),
        ],
        leading: widget.isChild
            ? BackButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
              )
            : null,
        destination: shell.tabs
            .map((e) =>
                LayoutNavigationDestination(label: e.label, icon: e.icon))
            .toList(),
        onDestinationSelected: (index) => _onItemTapped(context, index),
        currentIndex: _currentIndex,
        body: widget.child);
  }

  Future<UserInfoEntity?> _getCurrentUser(AuthState state) async {
    return await state.getCurrentUser();
  }
}
