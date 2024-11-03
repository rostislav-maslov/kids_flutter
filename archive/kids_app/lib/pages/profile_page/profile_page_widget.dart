import 'package:flutter/material.dart';
import 'package:ftl_flutter_shell_lib/router/base/go_router_page.dart';
import 'package:kids_app/pages/profile_edit_page/profile_edit_page.dart';

class ProfilePageWidget extends StatelessWidget {
  const ProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Placeholder(
    //     child: OutlinedButton(
    //         onPressed: () {
    //           // ProfileEditPage.instance.push(context, EmptyURLParam());
    //           // ProfileEditPage.instance.pushHack(context, EmptyURLParam());
    //           ProfileEditPage.instance.go(context, EmptyURLParam());
    //         },
    //         child: Text("Go to edit page")),
    //   ),
    // );
    return Placeholder(
      child: OutlinedButton(
          onPressed: () {
            // ProfileEditPage.instance.push(context, EmptyURLParam());
            // ProfileEditPage.instance.pushHack(context, EmptyURLParam());
            ProfileEditPage.instance.go(context, EmptyURLParam());
          },
          child: Text("Go to edit page")),
    );
  }
}
