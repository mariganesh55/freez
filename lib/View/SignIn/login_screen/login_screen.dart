import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/login_screen/login_controller.dart';
import 'package:freeze_app/widgets/logo.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/stackContainer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;

  final _formKey = GlobalKey<FormState>();

  // String? _email, _password;
  bool isloading = false;

  late LoginController controller;

  bool updateandsave() {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(builder: (logic) {
      return Scaffold(
          body: Stack(
        children: [
          buildBodyWidget(_size, logic),
          if (logic.status.isLoading)
            Center(
              child: CircularProgressIndicator(),
            )
        ],
      ));
    });
  }

  Scaffold buildBodyWidget(Size _size, LoginController logic) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                logo(),
                SizedBox(
                  height: 11.h,
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
                  style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                ),
                SizedBox(
                  height: _size.height * 0.14,
                ),
                StackContainer(
                  height: 420.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        titlle: 'Email',
                        icon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF939F9C),
                        ),
                        onChanged: (value) {
                          // _email = value!;
                          // print(_email.toString());
                        },
                        validationRules: ['required', 'email'],
                        obscureText: false,
                        controller: logic.emailTextController,
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: null,
                        textInputAction: TextInputAction.next,
                      ),
                      CustomTextField(
                          titlle: 'Password',
                          icon: Icon(
                            Icons.vpn_key_outlined,
                            color: Color(0xFF939F9C),
                          ),
                          onChanged: (value) {
                            // _password = value!;
                            // print(_password);
                          },
                          validationRules: ["required"],
                          obscureText: !showPassword,
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: IconButton(
                            onPressed: () =>
                                setState(() => showPassword = !showPassword),
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: showPassword
                                  ? Color(0xff65019A)
                                  : AppColors.iconColor,
                            ),
                          ),
                          textInputAction: TextInputAction.next,
                          controller: logic.passwordController),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        splashColor: Colors.white,
                        onTap: () async {
                          if (updateandsave()) {
                            logic.login();
                          }
                        },
                        child: Container(
                            height: 44,
                            width: 290,
                            alignment: Alignment.center,
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
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin:
                                  EdgeInsets.only(left: 37.0.w, right: 15.0.w),
                              child: const Divider(
                                thickness: 1,
                                color: Color(0xffEBF0FF),
                                height: 10,
                              )),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontSize: 14.sp,
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin:
                                  EdgeInsets.only(left: 15.0.w, right: 37.0.w),
                              child: const Divider(
                                thickness: 1,
                                color: Color(0xffEBF0FF),
                                height: 10,
                              )),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        splashColor: Colors.grey,
                        child: Container(
                          height: 44.h,
                          width: 290.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.w),
                              border: Border.all(color: Color(0xffDE7FFF)),
                              color: Color(0xff2B2B2B)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/google.png'),
                              //  SvgPicture.asset('assets/images/google.svg'),
                              Text(
                                'Login with Google',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed("/email_verification_page");
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF65019A),
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't Have an account?",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xFF939F9C),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.toNamed("/register");
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF65019A)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
