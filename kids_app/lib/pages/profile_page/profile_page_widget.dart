import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePageWidget extends StatelessWidget {
  const ProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Placeholder(
        child: OutlinedButton(
            onPressed: () {
              context.push('/profile/edit');
            },
            child: Text("Go to edit page")),
      ),
    );
  }
}
