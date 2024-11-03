import 'package:flutter/material.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/theme.dart';
import 'package:kids_app/theme_provider.dart';
import 'package:provider/provider.dart';

class KidsApp extends StatelessWidget {
  const KidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FTThemeProvider>(builder: (context, provider, child) {
      return MaterialApp.router(
        title: 'Kids App',
        theme: FTTheme.light(primary: provider.seedColor),
        darkTheme: FTTheme.dark(primary: provider.seedColor),
        themeMode: FTTheme.mode,
        routerConfig: KidsAppRouter.instance.router(),
      );
    });
  }
}