import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String tokenKey = 'token';
  static const String mobileNumberKey = 'mobile_number';

  static setUserCredientials(String mobileNumberValue, String tokenValue) {
    SharedPreferences.getInstance().then((value) {
      value.setString(tokenKey, tokenValue);
      value.setString(mobileNumberKey, mobileNumberValue);
    });
  }

  static Future<String?> getUserNumber() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(mobileNumberKey);
  }

  static Future<String?> getUserToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tokenKey);
  }
}
