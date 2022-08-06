import 'dart:convert';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freeze_app/Model/forgotpassword.dart';
import 'package:freeze_app/Model/userLogin.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Model/cheaterboxModel.dart';
import '../../Model/register_model.dart';

import '../../Model/core/snackbar.dart';
import '../../Model/core/appurl.dart';

import '../../shared/sharedservice.dart';

class Authenticate_user {
  Future<bool> signup(UserRegister user) async {
    var client = http.Client();
    try {
      var response = await client.post(Uri.parse(AppResponsiveUrl.register),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
          body: jsonEncode({
            "name": user.name,
            "email": user.email,
            "password": user.password,
            "aadhar": user.aadhar,
            "phone": user.phone,
            "pan": user.pan,
          }));
      if (response.statusCode == 200) {
        showSnackBar(context: Get.context!, message: 'Registered Successfully');
        return true;
      } else if (response.statusCode == 400) {
        showSnackBar(
            context: Get.context!,
            message: "Email Already Register",
            bgColor: Colors.red);
        return false;
      } else {
        print(response.statusCode);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return false;
      }
    } catch (e) {
      showSnackBar(
          context: Get.context!, message: e.toString(), bgColor: Colors.red);
      return false;
    }
  }

  Future<UserLogin?> login(String? email, String? password) async {
    String url = 'https://freez-api.herokuapp.com/auth/login';
    // final _base = "https://home-hub-app.herokuapp.com";

    Map<String, String> headers = {};
    headers['Accept'] = "application/json";
    headers["Content-Type"] = "application/json";

    Map<String, dynamic> values = Map();
    values['email'] = email!;
    values['password'] = password!;

    var res = await http.post(Uri.parse(url),
        body: json.encode({"email": '$email', "password": '$password'}),
        headers: headers);

    var jsonString = jsonDecode(res.body);
    print(jsonString);
    if (res.statusCode == 200) {
      SharedService().setUserName(email);
      SharedService().setUserName(password);
      UserLogin userData = UserLogin.fromJson(jsonString);
      return userData;
    }
    return null;
  }

  Future<bool?> verifyOtp(String id, String otp) async {
    var client = http.Client();
    try {
      var response = await client.post(
        Uri.parse(AppResponsiveUrl.otp),
        body: jsonEncode({"id": id, "otp": otp}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );

      if (response.statusCode == 200) {
        return response.body == "true";
      } else {
        // LoginFailureResponse res = loginFailureResponseFromJson(response.body);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return false;
      }
    } catch (e) {
      // showSnackBar(
      //     context: Get.context!, message: e.toString(), bgColor: Colors.red);
      // print(e);
      return false;
    }
  }

  Future<ForgotPasswordResponse?> sendOtp(String email) async {
    var client = http.Client();
    try {
      var response = await client.post(
        Uri.parse(AppResponsiveUrl.getotp),
        body: jsonEncode({"email": email}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );

      ForgotPasswordResponse? forgotPasswordResponse;

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonString = jsonDecode(response.body);
        forgotPasswordResponse = ForgotPasswordResponse.fromJson(jsonString);
        return forgotPasswordResponse;
      } else {
        // LoginFailureResponse res = loginFailureResponseFromJson(response.body);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return forgotPasswordResponse;
      }
    } catch (e) {
      // showSnackBar(
      //     context: Get.context!, message: e.toString(), bgColor: Colors.red);
      // print(e);
      return null;
    }
  }

  Future<UserRegister?> viewByEmail(String email) async {
    var client = http.Client();
    UserRegister? userResponse;
    try {
      var response = await client.post(
        Uri.parse(AppResponsiveUrl.getotp),
        body: jsonEncode({"email": email}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );

      if (response.statusCode == 200) {
        var jsonString = response.body;
        List<UserRegister> users = getUserResponseFromJson(jsonString);
        return users[0];
      } else {
        print(response.statusCode);
        // LoginFailureResponse res = loginFailureResponseFromJson(response.body);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return userResponse;
      }
    } catch (e) {
      // showSnackBar(
      //     context: Get.context!, message: e.toString(), bgColor: Colors.red);
      // print(e);
      return userResponse;
    }
  }

  Future<String?> userUpdate(String email, int otp, String password) async {
    var client = http.Client();

    try {
      var response = await client.post(
        Uri.parse(AppResponsiveUrl.userupdate),
        body: jsonEncode({"email": email, "password": password}),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );

      if (response.statusCode == 200) {
        var jsonString = response.body;

        return "";
      } else {
        print(response.statusCode);
        // LoginFailureResponse res = loginFailureResponseFromJson(response.body);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return "userResponse";
      }
    } catch (e) {
      // showSnackBar(
      //     context: Get.context!, message: e.toString(), bgColor: Colors.red);
      // print(e);
      return "userResponse";
    }
  }

  Future<CheaterBox?> fetchCheaterData() async {
    Map<String, String> headers = {};
    headers['Accept'] = "application/json";
    headers["Content-Type"] = "application/json";

    var response = await http.get(Uri.parse(AppResponsiveUrl.cheaterBox),
        headers: headers);
    Map<String, dynamic> map = jsonDecode(response.body);
    List<dynamic> data = map["cheaterBoxData"];

    return CheaterBox.fromJson(data);
  }
}
