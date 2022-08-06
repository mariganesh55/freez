import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/Model/register_model.dart';
import 'package:freeze_app/View/SignIn/register_screen/register_controller.dart';
import 'package:freeze_app/widgets/apptheme.dart';
import 'package:get/get.dart';

class RegisterPinWidget extends StatefulWidget {
  final UserRegister? user;
  const RegisterPinWidget({Key? key, required this.user}) : super(key: key);

  @override
  _RegisterPinWidgetState createState() => _RegisterPinWidgetState();
}

class _RegisterPinWidgetState extends State<RegisterPinWidget> {
  bool isLoading = false;
  final passwordController = TextEditingController();
  final confPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool showPassword = false;
  bool showConformPassword = false;

  @override
  Widget build(BuildContext context) {
    Widget _closeBox() => Container(
          width: 42,
          height: 36,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ]),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.clear,
                size: 20,
                color: Color.fromRGBO(96, 108, 103, 1),
              ),
            ),
          ),
        );

    Size size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 450,
            width: size.width * 0.9,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: size.width),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 23),
                        child: _closeBox(),
                      ),
                    ),

                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ]),
                      child: Image.asset(
                        'assets/images/Rectangle.png',
                        width: 248.w,
                        height: 104.h,
                      ),
                    ),

                    //New pin
                    const SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                      // height: 48.h,
                      width: 343.w,
                      child: Stack(
                        children: [
                          TextFormField(
                            controller: passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration:
                                AppTheme.textFieldDecoration("New Pin", null)
                                    .copyWith(
                              errorMaxLines: 3,
                              suffixIcon: IconButton(
                                onPressed: () => setState(
                                    () => showPassword = !showPassword),
                                icon: Icon(
                                  showPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: showPassword
                                      ? Colors.grey
                                      : AppColors.buttonBlue,
                                ),
                              ),
                            ),
                            obscureText: showPassword,

                            validator: (s) {
                              const String pattern =
                                  r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$)';

                              RegExp regex = RegExp(pattern);
                              if (!regex.hasMatch(s!))
                                return 'Password should be Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character';
                              else
                                return null;
                            },
                            // validator: (s) => s!.isEmpty ? 'Password Required' : null,
                            style: TextStyle(
                                color: AppColors.colorRed,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12.0.h, left: 11.w),
                            child: Image.asset(
                              'assets/images/key.jpg',
                              height: 25.h,
                              width: 25.w,
                              // color: AppColors.iconColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    //re type pin
                    SizedBox(
                      height: 9.h,
                    ),
                    SizedBox(
                      // height: 48.h,
                      width: 343.w,
                      child: Stack(
                        children: [
                          TextFormField(
                            controller: confPasswordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: AppTheme.textFieldDecoration(
                                    'Re-Type Pin', null)
                                .copyWith(
                              suffixIcon: IconButton(
                                onPressed: () => setState(() =>
                                    showConformPassword = !showConformPassword),
                                icon: Icon(
                                  showConformPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: showConformPassword
                                      ? Colors.white
                                      : AppColors.iconColor,
                                ),
                              ),
                            ),
                            obscureText: showConformPassword,
                            validator: (s) => s!.isEmpty
                                ? 'Confirm Password Required'
                                : s == passwordController.text
                                    ? null
                                    : 'Password does not match',
                            style: TextStyle(
                                color: AppColors.iconColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12.0.h, left: 11.w),
                            child: Image.asset(
                              'assets/images/key.jpg',
                              height: 25.h,
                              width: 25.w,
                              //   color: AppColors.iconColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    //register
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: InkWell(
                        onTap: isLoading
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  UserRegister userModel = UserRegister(
                                      name: widget.user!.name,
                                      email: widget.user!.email,
                                      password: passwordController.text.trim(),
                                      phone: widget.user!.phone,
                                      aadhar: widget.user!.aadhar,
                                      pan: widget.user!.pan,
                                      professionalDetails:
                                          widget.user!.professionalDetails,
                                      id: '');

                                  RegisterController registerController =
                                      Get.find<RegisterController>();

                                  registerController.registerUser(userModel);
                                }
                              },
                        child: Container(
                          height: 57.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                            color: AppColors.iconColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text(
                            isLoading ? 'Registering' : 'Create Password',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
