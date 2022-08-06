import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../widgets/logo.dart';
import 'reset_password_screen/otp_widget.dart';

class PasswordSetup extends StatefulWidget {
  const PasswordSetup({Key? key}) : super(key: key);

  @override
  State<PasswordSetup> createState() => _PasswordSetupState();
}

class _PasswordSetupState extends State<PasswordSetup> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 33.h,
            ),
            logo(),
            Text(
              "Welcome to the RITE Foundation",
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xFF65019A),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sign in to continue",
              style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
            ),
            SizedBox(
              height: 180.h,
            ),
            StackContainer(
              height: 240.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(
                    titlle: 'NEW PASSWORD',
                    icon: Icon(
                      Icons.vpn_key_outlined,
                      color: AppColors.iconColor,
                    ),
                    controller: passwordController,
                    keyboardType: null,
                    obscureText: false,
                    onChanged: (String) {},
                    suffixIcon: null,
                    textInputAction: null,
                  ),
                  CustomTextField(
                    titlle: 'NEW PASSWORD',
                    icon: Icon(
                      Icons.vpn_key_outlined,
                      color: AppColors.iconColor,
                    ),
                    controller: confirmPasswordController,
                    keyboardType: null,
                    obscureText: false,
                    onChanged: (String) {},
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
                            'Sign In',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: OTPWidget((value) {}),
                              type: PageTransitionType.leftToRight,
                              duration: const Duration(milliseconds: 100)));
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
