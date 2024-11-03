import 'package:flutter/material.dart';

class FTThemeProvider extends ChangeNotifier{
  late Color _seedColor;
  Color get seedColor => _seedColor;

  set seedColor(value) {
    _seedColor = value;
    notifyListeners();
  }

  FTThemeProvider({required Color defaultColor}) {
    _seedColor = defaultColor;
  }

  void updateTheme(Color currentColor) {
    seedColor = currentColor;
  }
}