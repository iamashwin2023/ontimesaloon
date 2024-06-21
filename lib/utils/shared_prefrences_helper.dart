import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {

  static String emailValue = 'email';

  static String numberValue = 'number';

  static Future<void> saveEmail(String email)
  async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(emailValue, email);
  }

  static Future<String?> getEmailValue() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(emailValue);
  }

  static Future<void> saveNumber(String number) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(numberValue, number);
  }

  static Future<String?> getNumberValue() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(numberValue);
  }
}