// import 'package:flutter/material.dart';
// import 'package:freeze_app/Model/core/snackbar.dart';
// import 'package:freeze_app/ModelView/database/Signup/resetPassword.dart';
// import 'package:freeze_app/ModelView/database/datasourcemodel.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';

// import 'package:page_transition/page_transition.dart';

// import '../../../Model/register_model.dart';
// import '../../../widgets/otp_widget.dart';

// class ForgotPasswordController extends GetxController with StateMixin {
//   TextEditingController controller = TextEditingController();

//   String id = "";

//   UserRegister? userRegister;
//   void sendOtp() async {
//     change(null, status: RxStatus.loading());
//     var response = await Authenticate_user().sendOtp(controller.text.trim());

//     if (response != null) {
//       change(null, status: RxStatus.success());

//       id = response.id.toString();

//       Navigator.push(
//           Get.context!,
//           PageTransition(
//               type: PageTransitionType.leftToRight,
//               child: OTPWidget(
//                 verifyOtp,
//                 forgotPassword: true,
//               ),
//               duration: const Duration(milliseconds: 250)));
//     } else {
//       change(null, status: RxStatus.error());
//       showSnackBar(
//           context: Get.context!,
//           message: 'Failed to Load',
//           bgColor: Colors.red);
//     }
//   }

//   void verifyOtp(String otp) async {
//     change(null, status: RxStatus.loading());

//     var response = await Authenticate_user().verifyOtp(id, otp);

//     if (response != null && response) {
//       userRegister = await Authenticate_user().viewByEmail(controller.text.trim());
//       Navigator.pop(Get.context!);
//       Navigator.pop(Get.context!);
//       change(null, status: RxStatus.success());
//       if (userRegister != null) {
//         Navigator.push(
//             Get.context!,
//             PageTransition(
//                 type: PageTransitionType.rightToLeft,
//                 child: ResetPasswordWidget((password) {
//                   userUpdate(userRegister!.name,userRegister.id, password);
//                 }),
//                 duration: const Duration(milliseconds: 250)));
//       }

//       // Navigator.push(
//       //     Get.context!,
//       //     PageTransition(
//       //         type: PageTransitionType.fade,
//       //         child: const ResetPasswordScreen(),
//       //         duration: const Duration(milliseconds: 250)));
//     } else {
//       change(null, status: RxStatus.error());
//       showSnackBar(
//           context: Get.context!,
//           message: 'Failed to Load',
//           bgColor: Colors.red);
//     }
//   }

//   void userUpdate(String  email, int otp,String password) async {
//     change(null, status: RxStatus.loading());

//     var response = await Authenticate_user().userUpdate(email,otp, password);

//     if (response != null) {
//       Navigator.pop(Get.context!);
//       // Navigator.pop(Get.context!);
//       change(null, status: RxStatus.success());
//     } else {
//       change(null, status: RxStatus.error());
//       showSnackBar(
//           context: Get.context!,
//           message: 'Failed to Load',
//           bgColor: Colors.red);
//     }
//   }

// }
