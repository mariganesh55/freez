import 'package:flutter/material.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

class AppTheme {
  static InputDecoration textFieldDecoration(String hintText, Icon? icon) =>
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          fontSize: 12,
          color: AppColors.hintTextGrey,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.only(left: 51),
        prefixIcon: SizedBox(
          height: 20,
          width: 20,
          child: icon,
        ),
      );
}
