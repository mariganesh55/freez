import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/register_screen/email_verification_screen/email_verification_controller.dart';
import 'package:freeze_app/widgets/logo.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(EmailVerificationController());
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmailVerificationController>(
      assignId: true,
      builder: (logic) {
        return Stack(
          children: [
            buildScaffold(logic),
            if (logic.status.isLoading)
              Center(
                child: CircularProgressIndicator(),
              )
          ],
        );
      },
    );
  }

  Scaffold buildScaffold(EmailVerificationController logic) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 33.h,
              ),
              logo(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to the RITE Foundation",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF65019A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Enter the Email Address",
                  style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                ),
              ),
              SizedBox(
                height: 180.h,
              ),
              StackContainer(
                height: 240.h,
                child: Form(
                  key: logic.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        titlle: 'Enter Your Email Id',
                        icon: Icon(
                          Icons.vpn_key_outlined,
                          color: AppColors.iconColor,
                        ),
                        controller: logic.emailController,
                        keyboardType: null,
                        obscureText: false,
                        onChanged: (String) {},
                        validationRules: ['required', 'email'],
                        suffixIcon: null,
                        textInputAction: null,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
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
                                'Send OTP',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () async {
                          bool isValidated =
                              logic.formKey.currentState!.validate();
                          if (isValidated) {
                            logic.sendEmailOtp();
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
    );
  }
}
