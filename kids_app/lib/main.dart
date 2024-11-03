import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_app/kids_app.dart';
import 'package:kids_app/kids_app_router.dart';
import 'package:kids_app/ui/theme/theme.dart';
import 'package:kids_app/ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  /// ENV константы
  // await Constants.init();

  /// Repository Schemes
  //BaseDBRepository.setupScheme(HostInfoEntitySchema);
  //BaseDBRepository.setupScheme(UserInfoEntitySchema);

  /// States
  // await KidsAppStateManager.setup();

  ///
  KidsAppRouter.setup();
  // KidAppRouter.instance(KidsAppStateManager.instance()).showAllPages();

  // Настройки GoRouter - Позволяет методам push и pop, работать с URL
  GoRouter.optionURLReflectsImperativeAPIs = true;

  // Запускаем приложение
  runApp(ChangeNotifierProvider<FTThemeProvider>(
    create: (context) => FTThemeProvider(defaultColor: FTTheme.mainColor),
    child: KidsApp(),
  ));
}
