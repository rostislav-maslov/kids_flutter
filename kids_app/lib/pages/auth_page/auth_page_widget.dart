import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/commons/route_url.dart';

class AuthPageWidget extends StatelessWidget {
  const AuthPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(onPressed: (){
            context.go(RouteUrl.instance.home.absolute);
          }, child: Text('Go to Home Page'))
        ],
      )),
    );
  }
}
