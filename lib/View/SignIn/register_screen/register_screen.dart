import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/register_screen/register_controller.dart';
import 'package:freeze_app/widgets/apptheme.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Model/register_model.dart';
import '../../../widgets/logo.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Get.put(RegisterController());
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(builder: (logic) {
      return Stack(
        children: [
          buildScaffold(context, logic),
          if (logic.status.isLoading)
            Center(
              child: CircularProgressIndicator(),
            )
        ],
      );
    });
  }

  Scaffold buildScaffold(BuildContext context, RegisterController logic) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    logo(),
                    SizedBox(
                      height: 2.h,
                    ),
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
                      style:
                          TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 58.h,
              ),
              StackContainer(
                  height: 430.h,
                  child: Form(
                    key: logic.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomTextField(
                          titlle: 'NAME',
                          icon: Icon(
                            Icons.person,
                            color: AppColors.iconColor,
                          ),
                          controller: logic.nameController,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validationRules: ['required'],
                        ),
                        CustomTextField(
                          titlle: 'MAIL',
                          icon: Icon(
                            Icons.mail_outline,
                            color: AppColors.iconColor,
                          ),
                          controller: logic.emailController,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validationRules: ['required', 'email'],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 45.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(31, 31, 31, 0.9),
                                      spreadRadius: -25,
                                      offset: Offset(5, 5)),
                                  BoxShadow(
                                      color: Color.fromRGBO(51, 51, 51, 0.9),
                                      spreadRadius: -10,
                                      offset: Offset(-5, -5)),
                                  BoxShadow(
                                      color: Color.fromRGBO(31, 31, 31, 0.2),
                                      spreadRadius: -10,
                                      offset: Offset(5, -5)),
                                  BoxShadow(
                                      color: Color.fromRGBO(31, 31, 31, 0.2),
                                      spreadRadius: -10,
                                      offset: Offset(-5, 5)),
                                  BoxShadow(
                                      color: Color.fromRGBO(31, 31, 31, 0.5),
                                      spreadRadius: -2,
                                      offset: Offset(-1, -1)),
                                  BoxShadow(
                                      color: Color.fromRGBO(51, 51, 51, 0.3),
                                      spreadRadius: -2,
                                      offset: Offset(1, 1)),
                                ],
                              ),
                              child: DropdownButtonFormField(
                                iconSize: 20,
                                decoration: AppTheme.textFieldDecoration(
                                  'PROFESSIONAL DETAILS',
                                  Icon(
                                    Icons.feed,
                                    color: AppColors.iconColor,
                                  ),
                                ).copyWith(
                                  contentPadding:
                                      EdgeInsets.only(left: 20.w, right: 15.w),
                                ),
                                onChanged: (String? val) {
                                  setState(
                                      () => logic.selectedProfession = val);
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    logic.selectedProfession == null
                                        ? 'Please select details'
                                        : null,
                                items:
                                    logic.professionalData.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        CustomTextField(
                          titlle: 'AADHAR CARD',
                          icon: Icon(
                            Icons.text_snippet_rounded,
                            color: AppColors.iconColor,
                          ),
                          controller: logic.aadharController,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {},
                          suffixIcon: null,
                          textInputAction: null,
                          maximumWordCount: 12,
                          validationRules: ['required', 'aadhar'],
                        ),
                        CustomTextField(
                          titlle: 'PAN CARD',
                          icon: Icon(
                            Icons.credit_card_rounded,
                            color: AppColors.iconColor,
                          ),
                          controller: logic.panController,
                          keyboardType: null,
                          obscureText: false,
                          maximumWordCount: 10,
                          onChanged: (String) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validationRules: ['required', 'pan'],
                        ),
                        CustomTextField(
                          titlle: 'PHONE NUMBER',
                          icon: Icon(
                            Icons.phone_android_rounded,
                            color: AppColors.iconColor,
                          ),
                          controller: logic.phoneController,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validationRules: ['required', 'mobile_number'],
                          maximumWordCount: 10,
                        ),
                        SizedBox(
                          height: 5.h,
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
                                    'Register',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 14.sp),
                                  ),
                                )),
                            onTap: () {
                              var isValidate =
                                  logic.formKey.currentState!.validate();

                              if (isValidate) {
                                UserRegister users = UserRegister(
                                    name: logic.nameController.text,
                                    email: logic.emailController.text,
                                    password: null,
                                    phone: logic.phoneController.text,
                                    aadhar: logic.aadharController.text,
                                    pan: logic.panController.text,
                                    professionalDetails:
                                        logic.professionalController.text,
                                    id: '');
                                logic.registerUser(users);

                                // Navigator.push(
                                //     context,
                                //     PageTransition(
                                //         type: PageTransitionType.rightToLeft,
                                //         child: RegisterPinWidget(user: users),
                                //         duration: const Duration(
                                //             milliseconds: 250)));
                              }
                            }),
                        SizedBox(
                          height: 5.h,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
