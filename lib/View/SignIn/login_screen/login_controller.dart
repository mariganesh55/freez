import 'package:flutter/material.dart';
import 'package:freeze_app/http/repository/login_repository.dart';
import 'package:freeze_app/http/response/UserLoginResponse.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<bool> showPassword = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    change(null, status: RxStatus.success());
  }

  void login() async {
    change(null, status: RxStatus.loading());

    UserLoginResponse? response = await LoginRepository()
        .login(emailTextController.text.trim(), passwordController.text.trim());

    if (response != null) {
      change(null, status: RxStatus.success());
      Get.toNamed('/home_tab');
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
