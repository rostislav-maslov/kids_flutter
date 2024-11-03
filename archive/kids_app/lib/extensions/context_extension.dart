import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension TosterContextExtension on BuildContext{
  Map<String, String> get pathParameters => GoRouter.of(this).routerDelegate.currentConfiguration.pathParameters;
}