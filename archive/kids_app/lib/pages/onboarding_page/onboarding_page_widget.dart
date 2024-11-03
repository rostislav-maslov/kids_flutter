import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_uikit/molecules/spiners/spiner.dart';
import 'package:kids_app/pages/home_page/home_page.dart';
import 'package:kids_app/pages/onboarding_page/onboarding_page.dart';
import 'package:kids_app/pages/profile_page/profile_page.dart';
import 'package:kids_app/ui/layouts/main_bottom_navigation_layout/main_bottom_navigation_layout.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: FTSpiner()),
        Center(
          child: TextButton(
              onPressed: () {
                ProfilePage.instance.go(context, EmptyURLParam());
              },
              child: Text("Go to main page")),
        )
      ],
    ));
  }
}
