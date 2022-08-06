import 'package:flutter/cupertino.dart';
import 'package:freeze_app/View/SignIn/reset_password_screen/otp_widget.dart';
import 'package:freeze_app/http/repository/login_repository.dart';
import 'package:freeze_app/http/response/GenericResponse.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController with StateMixin {
  TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    change(null, status: RxStatus.success());
  }

  void sendEmailOtp() async {
    change(null, status: RxStatus.loading());
    GenericResponse? response =
        await LoginRepository().sendEmailOtp(emailController.text.trim());
    if (response != null) {
      change(null, status: RxStatus.success());

      Get.defaultDialog(
          content: OTPWidget((value) {
            Get.back();
            Get.offAndToNamed('/reset_password_screen', arguments: {
              'otp': value,
              'email': emailController.text.trim(),
              "isCreatePassword": false
            });
          }),
          title: 'OTP Verification',
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          barrierDismissible: false);
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
