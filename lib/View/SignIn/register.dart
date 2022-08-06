import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

import 'package:freeze_app/ModelView/database/datasourcemodel.dart';
import 'package:freeze_app/View/SignIn/registerpin.dart';
import 'package:freeze_app/widgets/apptheme.dart';

import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Model/register_model.dart';
import '../../widgets/logo.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

List<String> professionalDetails = [];

// Future? getProfssionalDetails() async {
//   var res = await http.get(Uri.parse(AppResponsiveUrl.getProffessional),
//       headers: {"Accept": "application/json"});
//   var professional = jsonDecode(res.body);
//   print(professional);
//   if (res.statusCode == 200) {}
// }

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

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();
  final TextEditingController aadhar = TextEditingController();
  final TextEditingController pan = TextEditingController();
  final TextEditingController professional = TextEditingController();

  final TextEditingController number = TextEditingController();
  final TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

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
  Widget build(BuildContext context) {
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
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Textfield1(
                          titlle: 'NAME',
                          icon: Icon(
                            Icons.person,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: name,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            name.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) =>
                              s!.isEmpty ? 'Field required' : null,
                        ),
                        Textfield1(
                          titlle: 'MAIL',
                          icon: Icon(
                            Icons.mail_outline,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: email,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            email.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) =>
                              !GetUtils.isEmail(s!) ? 'Email required' : null,
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
                                onChanged: (String? val) =>
                                    setState(() => professional.text = val!),
                                validator: (value) => value == null
                                    ? 'Please select details'
                                    : null,
                                items: professionalData.map((String value) {
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
                        Textfield1(
                          titlle: 'AADHAR CARD',
                          icon: Icon(
                            Icons.text_snippet_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: aadhar,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            aadhar != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (String) {},
                        ),
                        Textfield1(
                          titlle: 'PAN CARD',
                          icon: Icon(
                            Icons.credit_card_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: pan,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (String) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (String) {},
                        ),
                        Textfield1(
                          titlle: 'PHONE NUMBER',
                          icon: Icon(
                            Icons.phone_android_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: number,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            number.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) {
                            const String pattern = r'(^(?:[+0]9)?[0-9]{8}$)';

                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(s!)) {
                              return 'Mobile number is not valid';
                            } else {
                              return null;
                            }
                          },
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
                              if (updateandsave()) {
                                setState(() {
                                  isLoading = true;
                                });

                                UserRegister users = UserRegister(
                                    name: name.text,
                                    email: email.text,
                                    password: null,
                                    phone: number.text,
                                    aadhar: aadhar.text,
                                    pan: pan.text,
                                    professionalDetails: professional.text,
                                    id: '');
                                setState(() {
                                  isLoading = false;
                                });

                                // if (GetUtils.isEmail(email.text)) {
                                //   Authenticate_user()
                                //       .signup(users)
                                //       .then((value) {
                                //     if (value) {
                                //       Navigator.pop(context);
                                //     }
                                //   });

                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child:
                                            RegistrationPinWidget(user: users),
                                        duration:
                                            const Duration(milliseconds: 250)));
                              }
                            }
                            // if (updateandsave()) {
                            // setState(() {
                            //   _isLoading = true;
                            // });

                            // User_register users = User_register(
                            //     name: name.text,
                            //     email: email.text,
                            //     password: null,
                            //     lastname: '',
                            //     gender: '',
                            //     phone: number.text,
                            //     aadhar: aadhar.text,
                            //     pan: pan.text,
                            //     professional_details: professional.text);
                            // if (GetUtils.isEmail(email.text)) {
                            //     Authenticate_user()
                            //         .signup(users)
                            //         .then((res) => {
                            //               if (res)
                            //                 {
                            // Navigator.pop(context),
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //         type: PageTransitionType
                            //             .rightToLeft,
                            //         child:
                            //             RegistrationPinWidget(
                            //                 user: users),
                            //         duration:
                            //             const Duration(
                            //                 milliseconds:
                            //                     250)))
                            //                 }
                            //               else
                            //                 {
                            //                   showSnackBar(
                            //                       context: context,
                            //                       message:
                            //                           'Password too short',
                            //                       bgColor: Colors.red),
                            //                 }
                            //             }

                            //             );
                            //   } else {
                            //     showSnackBar(
                            //         context: context,
                            //         message: 'Email not valid',
                            //         bgColor: Colors.red);
                            //   }
                            // }

                            //   if (_formKey.currentState!.validate()) {
                            //     setState(() {
                            //       _isLoading = true;
                            //     });
                            //     if (name.text != null &&
                            //         aadhar.text != null &&
                            //         email.text != null &&
                            //         pan.text != null &&
                            //         professional.text != null &&
                            //         number != null) {
                            //       //validate email
                            //       if (GetUtils.isEmail(email.text)) {
                            //         if (_password!.trim().length >= 8) {
                            //           Authenticate_user()
                            //               .signup(users)
                            //               .then((value) {
                            //             if (value) {
                            //               Navigator.pop(context);
                            //             }
                            //           });
                            //       } else {
                            // showSnackBar(
                            //     context: context,
                            //     message: 'Password too short',
                            //     bgColor: Colors.red);
                            //       }
                            //     } else {
                            //       showSnackBar(
                            //           context: context,
                            //           message: 'Email not valid',
                            //           bgColor: Colors.red);
                            //     }
                            //   } else {
                            //     showSnackBar(
                            //         context: context,
                            //         message: 'Values can\'t be empty',
                            //         bgColor: Colors.red);
                            //   }
                            // }
                            // },
                            ),
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
