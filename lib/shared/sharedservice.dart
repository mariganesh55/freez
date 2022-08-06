import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  // static SharedPreferences? sharePrefer;
  //
  // final EmailUser = 'email';

  // init() async {
  //   final sharePrefer = await SharedPreferences.getInstance();
  //   print(sharePrefer);
  // }
  //
  // setUserName(String userName) async {
  //   await sharePrefer!.setString(EmailUser, userName);
  // }
  //
  // getUserDetails() async {
  //   await sharePrefer!.getString(EmailUser);
  // }

  static clearStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static setPreference(String keyPair, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is bool) {
      await prefs.setBool(keyPair, value);
    }
    if (value is int) {
      await prefs.setInt(keyPair, value);
    }
    if (value is double) {
      await prefs.setDouble(keyPair, value);
    }
    if (value is String) {
      await prefs.setString(keyPair, value);
    }
  }

  static Future<dynamic> getPreference(String keyPair) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(keyPair);
  }
}
