import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freeze_app/http/response/get_user_profile_response.dart';
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

  // Get User
  static Future<GetUserProfileResponse?> getUser() async {
    String? value;
    SharedPreferences pref = await SharedPreferences.getInstance();
    value = pref.get("user") as String?;
    if (value?.isEmpty ?? true) {
      return null;
    } else {
      Map<String, dynamic> map = await _parseJson(value!);
      return GetUserProfileResponse.fromJson(map);
    }
  }

  static saveUser(GetUserProfileResponse user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String userString = "";
    userString = jsonEncode((user).toJson());

    await prefs.setString("user", userString);
  }

  // Parse and Decode
  static Map<String, dynamic> _parseAndDecode(String response) {
    return jsonDecode(response);
  }

  // Parse Json
  static Future<Map<String, dynamic>> _parseJson(String text) {
    return compute(_parseAndDecode, text);
  }


}
 