import 'package:flutter/material.dart';

class WheelSexChooseWidget  extends StatelessWidget {
  final String text;
  final int index;
  final bool selected;

  const WheelSexChooseWidget({super.key, required this.text, required this.index, required this.selected});

  @override
  Widget build(BuildContext context) {
    return selected ?
    Text(text, style: Theme.of(context).textTheme.headlineMedium, ) :
    Text(text, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.outline),) ;
  }
}
