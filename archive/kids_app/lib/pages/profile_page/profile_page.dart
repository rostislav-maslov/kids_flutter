import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_shell_lib/router/base/router_url_config.dart';
import 'package:kids_app/pages/main_shell/main_shell.dart';
import 'package:kids_app/pages/profile_edit_page/profile_edit_page.dart';
import 'package:kids_app/pages/profile_page/profile_page_widget.dart';

class ProfilePage extends GoRoutePage<EmptyURLParam, Widget> {
  static final String url = 'profile';
  static final ProfilePage instance = ProfilePage();

  ProfilePage()
      : super(
            path: ProfilePage.url,
            widget: ProfilePageWidget(),
            childRoutes: [ProfileEditPage.instance]);

  @override
  String goUrl(EmptyURLParam urlParamType) {
    String goTo = RouterUrlConfig.urlWithSlash("/$url");
    return goTo;
  }
}
