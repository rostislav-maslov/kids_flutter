import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/commons/route_url.dart';
import 'package:kids_app/ui/widgets/list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';
import 'package:kids_app/ui/widgets/wheel_old_choose/wheel_old_choose_widget.dart';
import 'package:kids_app/ui/widgets/wheel_old_choose/wheel_sex_choose_widget.dart';

class AuthCompleteSexPage extends StatefulWidget {
  const AuthCompleteSexPage({super.key});

  @override
  State<AuthCompleteSexPage> createState() => _AuthCompleteSexPageState();
}

class _AuthCompleteSexPageState extends State<AuthCompleteSexPage> {
  bool boy = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Шаг 2 из 4х'),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(8),
          child: ListView(
            children: [
              Card(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Выбери, кто ты: мальчик или девочка?',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(
                          width: 1,
                          height: 12,
                        ),
                        Text(
                          'Это поможет нам подобрать для тебя задания и призы, которые будут тебе интересны!',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: ListWheelScrollViewX(
                              scrollDirection: Axis.horizontal,
                              onSelectedItemChanged: (int select) {
                                setState(() {
                                  boy = select == 0;
                                });
                              },
                              itemExtent: 120,
                              children: [
                                WheelSexChooseWidget(text: 'Мальчик', index: 0, selected: boy == true),
                                WheelSexChooseWidget(text: 'Девочка', index: 1, selected: boy == false,),
                              ]),
                        )
                      ],
                    ),
                  )),
              SizedBox(width: 1,height: 48,),
              FilledButton(
                onPressed: () {
                  setState(() {
                    context.push(RouteUrl.instance.authCompleteName.absolute);
                  });
                },
                child: Text(boy ? 'Я, Мальчик' : 'Я, Девочка'),
              )
            ],
          ),
        ));
  }
}
