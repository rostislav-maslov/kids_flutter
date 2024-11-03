import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/route_url.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: CircularProgressIndicator()),
        Center(
          child: TextButton(
              onPressed: () {
                context.go(RouteUrl.instance.auth.absolute);
              },
              child: Text("Onboarding page")),
        )
      ],
    ));
  }
}
