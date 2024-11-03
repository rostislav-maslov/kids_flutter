import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:ftl_flutter_shell_lib/router/base/router_url_config.dart';
import 'package:kids_app/pages/profile_edit_page/profile_edit_page_widget.dart';
import 'package:kids_app/pages/profile_page/profile_page.dart';

class ProfileEditPage extends GoRoutePage<EmptyURLParam, Widget> {
  static final String _url = 'edit';
  static final ProfileEditPage instance = ProfileEditPage();

  ProfileEditPage()
      : super(path: ProfileEditPage._url, widget: ProfileEditPageWidget());

  @override
  String goUrl(EmptyURLParam urlParamType) {
    String goTo = RouterUrlConfig.urlWithSlash("/${ProfilePage.url}/$_url");
    return goTo;
  }
}
