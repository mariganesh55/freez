import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/Theme/app_color.dart';
import 'apptheme.dart';

class Textfield1 extends StatelessWidget {
  final String titlle;
  final Icon icon;
  final controllerthis;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;

  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  const Textfield1({
    Key? key,
    required this.titlle,
    required this.icon,
    required this.onChanged,
    required this.validator,
    required this.obscureText,
    required this.keyboardType,
    required this.suffixIcon,
    required this.textInputAction,
    required this.controllerthis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303.w,
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
      child: TextFormField(
        // autofocus: true,

        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        controller: controllerthis,
        decoration: AppTheme.textFieldDecoration(titlle, icon)
            .copyWith(suffixIcon: suffixIcon),
        onChanged: onChanged,
        textInputAction: textInputAction,

        style: const TextStyle(color: AppColors.hintTextGrey, fontSize: 12),
        //   onChanged: (val) => _password = val,
      ),
    );
  }
}
