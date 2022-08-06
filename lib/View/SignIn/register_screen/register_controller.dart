import 'package:flutter/cupertino.dart';
import 'package:freeze_app/Model/register_model.dart';
import 'package:freeze_app/View/SignIn/reset_password_screen/otp_widget.dart';
import 'package:freeze_app/http/response/UserRegisterResponse.dart';
import 'package:get/get.dart';

import '../../../http/repository/login_repository.dart';

class RegisterController extends GetxController with StateMixin {
  List<String> professionalData = [
    'industrial',
    'government',
    'domestic',
    'distributors',
    'dealers',
    'Technician',
    'B.partners',
    'advisor',
    'admin',
    'instituion',
    'trust',
    'association',
    'students',
    'public',
    'job seakers'
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController panController = TextEditingController();
  final TextEditingController professionalController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  String? selectedProfession;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    change(null, status: RxStatus.success());
  }

  void registerUser(UserRegister userModel) async {
    change(null, status: RxStatus.loading());
    UserRegisterResponse? userRegisterresponse =
        await LoginRepository.signup(userModel);
    if (userRegisterresponse != null) {
      change(null, status: RxStatus.success());
      Get.defaultDialog(
          content: OTPWidget((value) {
            Get.back();
            Get.offAndToNamed('/reset_password_screen', arguments: {
              'otp': value,
              'email': emailController.text.trim(),
              "isCreatePassword": true
            });
          }),
          title: 'OTP Verification',
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          barrierDismissible: false);
      // Get.offAllNamed('/login');
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
