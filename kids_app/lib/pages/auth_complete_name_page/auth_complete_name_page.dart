import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/commons/route_url.dart';

class AuthCompleteNamePage extends StatelessWidget {
  const AuthCompleteNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Шаг 3 из 4х'),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(16),
          child: ListView(
            children: [
              SizedBox(
                width: 1,
                height: 24,
              ),
              Center(
                child: Text(
                  'Как тебя зовут?',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              SizedBox(
                width: 1,
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Введи свое имя',
                    labelText: 'Имя',
                    helperText: 'Имя будет отображаться в приложении'),
              ),
              SizedBox(
                width: 1,
                height: 48,
              ),
              FilledButton(
                onPressed: () {
                  context.push(RouteUrl.instance.authCompleteAvatar.absolute);
                },
                child: Text('Дальше'),
              ),
            ],
          ),
        ));
  }
}
