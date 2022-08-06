import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/reset_password_screen/reset_password_controller.dart';
import 'package:freeze_app/utils/apputils.dart';
import 'package:freeze_app/widgets/logo.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isLoading = false;

  bool showPassword = false;
  bool showConformPassword = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Get.put(ResetPasswordController());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<ResetPasswordController>(
      assignId: true,
      builder: (logic) {
        return Stack(
          children: [
            Scaffold(
              backgroundColor: AppColors.scaffoldBG,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 33,
                      ),
                      logo(),
                      SizedBox(
                        height: 33,
                      ),
                      Text(
                        "Welcome to the RITE Foundation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xFF65019A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      // Text(
                      //   "Enter the Email Address",
                      //   style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                      // ),
                      // SizedBox(
                      //   height: 180.h,
                      // ),
                      StackContainer(
                        height: 330.h,
                        child: Form(
                          key: logic.formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              CustomTextField(
                                titlle: 'Enter Password',
                                icon: Icon(
                                  Icons.vpn_key_outlined,
                                  color: AppColors.iconColor,
                                ),
                                controller: logic.passwordController,
                                keyboardType: null,
                                obscureText: false,
                                onChanged: (String) {},
                                validationRules: ['password'],
                                suffixIcon: null,
                                textInputAction: null,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              CustomTextField(
                                titlle: 'Confirm Password',
                                icon: Icon(
                                  Icons.vpn_key_outlined,
                                  color: AppColors.iconColor,
                                ),
                                controller: logic.confPasswordController,
                                keyboardType: null,
                                obscureText: false,
                                onChanged: (String) {},
                                validationRules: ['password'],
                                suffixIcon: null,
                                textInputAction: null,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              InkWell(
                                child: Container(
                                    height: 44.h,
                                    width: 290.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.w),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xffA202F6),
                                              blurRadius: 3.w,
                                              offset: Offset(1, 1)),
                                          BoxShadow(
                                              color: Color(0xff28003),
                                              blurRadius: 1.w,
                                              offset: Offset(-1, -1)),
                                          BoxShadow(
                                              color: Color(0xff28003E),
                                              blurRadius: 1.w,
                                              offset: Offset(2, -2)),
                                          BoxShadow(
                                              color: Color(0xff28003E),
                                              blurRadius: 1.w,
                                              offset: Offset(-2, 2)),
                                          BoxShadow(
                                              color: Color(0xffA202F6),
                                              blurRadius: 1.w,
                                              //blurStyle: BlurStyle.inner,
                                              offset: Offset(-3, -3)),
                                          BoxShadow(
                                              color: Color(0xff28003E),
                                              blurRadius: 1.w,
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(2, 2)),
                                        ],
                                        color: Color(0xff65019A)),
                                    child: Center(
                                      child: Text(
                                        'Create Password',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 14.sp),
                                      ),
                                    )),
                                onTap: () async {
                                  bool isValidated =
                                      logic.formKey.currentState!.validate();

                                  if (logic.passwordController.text !=
                                      logic.confPasswordController.text) {
                                    AppUtils.showToast("Password mismatch",
                                        color: Colors.red);
                                  } else {
                                    if (logic.isCreatePassword) {
                                      logic.createPassword();
                                    } else {
                                      logic.changePassword();
                                    }
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (logic.status.isLoading)
              Center(
                child: CircularProgressIndicator(),
              )
          ],
        );
      },
    );
  }
}
