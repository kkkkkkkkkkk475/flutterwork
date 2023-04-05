import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String tokenKeyName = 'token';
  static String name = 'name';

  static Future<String> geftSharedString(String keyName) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getString(keyName)!;
  }

  static Future<bool> setSharedString(String keyName, String keyValue) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.setString(keyName, keyValue);
  }
}
