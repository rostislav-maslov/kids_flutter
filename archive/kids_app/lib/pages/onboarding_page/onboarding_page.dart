import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_shell_lib/router/base/router_url_config.dart';
import 'package:kids_app/pages/onboarding_page/onboarding_page_widget.dart';

class OnboardingPage extends GoRoutePage<EmptyURLParam, Widget> {
  static final String url = 'onboarding';
  static final OnboardingPage instance = OnboardingPage();

  OnboardingPage()
      : super(path: OnboardingPage.url, widget: OnboardingWidget());

  @override
  String goUrl(EmptyURLParam urlParamType) {
    String goTo = RouterUrlConfig.urlWithSlash(url);
    return goTo;
  }
}
