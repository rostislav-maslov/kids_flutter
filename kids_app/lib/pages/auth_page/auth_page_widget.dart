import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/commons/route_url.dart';
import 'package:kids_app/kids_app_router.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({super.key});

  @override
  State<AuthPageWidget> createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  var showPhone = true;

  @override
  Widget build(BuildContext context) {
    if (showPhone == true) return buildPhone(context);
    return buildSms(context);
  }

  Widget buildSms(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Авторизация'),
        ),
        body: SafeArea(
            minimum: EdgeInsets.all(16),
            child: ListView(
              children: [
                SizedBox(
                  width: 1,
                  height: 42,
                ),
                Text(
                  'Введи код\n подтвеждения',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 1,
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'ХХХX',
                      labelText: 'Код подтверждения',
                      helperText: 'Код приходит в течении 30 секунд'),
                ),
                SizedBox(
                  width: 1,
                  height: 48,
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      context.go(RouteUrl.instance.authCompleteOld.absolute);
                    });
                  },
                  child: Text('Далее'),
                )
                // FilledButton(onPressed: null, child: Text('Код должен быть 4 символа'), )
              ],
            )));
  }

  Widget buildPhone(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Авторизация'),
        ),
        body: SafeArea(
            minimum: EdgeInsets.all(16),
            child: ListView(
              children: [
                SizedBox(
                  width: 1,
                  height: 42,
                ),
                Text(
                  'Авторизация по\n номеру телефона',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 1,
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: '+7 ХХХ ХХХ ХХ ХХ',
                      labelText: 'Телефон',
                      helperText: 'На этот номе придет СМС'),
                ),
                SizedBox(
                  width: 1,
                  height: 48,
                ),
                FilledButton(
                    onPressed: () {
                      setState(() {
                        showPhone = false;
                      });
                    },
                    child: Text('Получить СМС'))
              ],
            )));
  }
}
