import 'package:flutter/material.dart';

enum ThemeEnum { Light, Dark, xyz }

class AuthController with ChangeNotifier {
  ThemeEnum _theme = ThemeEnum.Light;

  ThemeEnum get theme => _theme;

  void chnage() {
    if (_theme == ThemeEnum.Light) {
      _theme = ThemeEnum.Dark;
      notifyListeners();
      return;
    } else if (_theme == ThemeEnum.Dark) {
      _theme = ThemeEnum.xyz;
      notifyListeners();
      return;
    } else {
      _theme = ThemeEnum.Light;
      notifyListeners();
      return;
    }
  }
}
