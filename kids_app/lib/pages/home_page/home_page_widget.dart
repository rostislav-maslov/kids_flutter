import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/route_url.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          OutlinedButton(onPressed: (){
            context.push(RouteUrl.instance.profile.absolute);
          }, child: Text('Go to profile')),

          OutlinedButton(onPressed: (){
            context.push(RouteUrl.instance.rewards.absolute);
          }, child: Text('Go to rewards'))
        ],
      )),
    );
  }
}
