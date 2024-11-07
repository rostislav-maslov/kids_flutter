import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/commons/route_url.dart';
import 'package:kids_app/ui/widgets/list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';
import 'package:kids_app/ui/widgets/wheel_old_choose/wheel_old_choose_widget.dart';

class AuthCompleteOldPage extends StatefulWidget {
  const AuthCompleteOldPage({super.key});

  @override
  State<AuthCompleteOldPage> createState() => _AuthCompleteOldPageState();
}

class _AuthCompleteOldPageState extends State<AuthCompleteOldPage> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Шаг 1 из 4х'),
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
                      'Сколько тебе лет?',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(
                      width: 1,
                      height: 12,
                    ),
                    Text(
                      'Укажи свой возраст, чтобы мы могли предложить тебе задания и призы, подходящие именно для тебя! Это поможет сделать игру интереснее и веселее для тебя!',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ListWheelScrollViewX(
                        scrollDirection: Axis.horizontal,
                          onSelectedItemChanged: (int select) {
                            setState(() {
                              selected = select;
                            });
                          },
                          itemExtent: 40,
                          children: [
                            WheelOldChooseWidget(text: '6', index: 0, selected: 0 == selected),
                            WheelOldChooseWidget(text: '7', index: 1, selected: 1 == selected),
                            WheelOldChooseWidget(text: '8', index: 2, selected: 2 == selected),
                            WheelOldChooseWidget(text: '9', index: 3, selected: 3 == selected),
                            WheelOldChooseWidget(text: '10', index: 4, selected: 4 == selected),
                            WheelOldChooseWidget(text: '11', index: 5, selected: 5 == selected),
                            WheelOldChooseWidget(text: '12', index: 6, selected: 6 == selected),
                            WheelOldChooseWidget(text: '13', index: 7, selected: 7 == selected),
                            WheelOldChooseWidget(text: '14', index: 8, selected: 8 == selected),
                            WheelOldChooseWidget(text: '15', index: 9, selected: 9 == selected),
                          ]),
                    )
                  ],
                ),
              )),
              SizedBox(width: 1,height: 48,),
              FilledButton(
                onPressed: () {
                  setState(() {
                    context.push(RouteUrl.instance.authCompleteSex.absolute);
                  });
                },
                child: Text('Далее'),
              )
            ],
          ),
        ));
  }
}
