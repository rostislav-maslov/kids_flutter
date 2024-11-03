import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_shell_lib/router/base/router_url_config.dart';
import 'package:kids_app/pages/home_page/home_page_widget.dart';
import 'package:kids_app/pages/main_shell/main_shell.dart';

class HomePage extends GoRoutePage<EmptyURLParam, Widget> {
  static final String url = 'main';
  static final HomePage instance = HomePage();

  HomePage() : super(path: HomePage.url, widget: HomePageWidget());

  @override
  String goUrl(EmptyURLParam urlParamType) {
    String goTo = RouterUrlConfig.urlWithSlash("/$url");
    return goTo;
  }
}
