import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/commons/route_url.dart';

class RewardsPageWidget extends StatelessWidget {
  const RewardsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          OutlinedButton(onPressed: (){
            context.push(RouteUrl.instance.rewards.absolute);
          }, child: Text('no route here this is reward page'))
        ],
      )),
    );
  }
}
