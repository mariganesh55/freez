import 'package:flutter/material.dart';

import '../Theme/app_color.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  Color bgColor = AppColors.scaffoldBG,
}) {
  final snackBar = SnackBar(
    backgroundColor: bgColor,
    duration: const Duration(seconds: 2),
    content: Text(
      message,
      style: const TextStyle(color: Colors.white),
      textAlign: TextAlign.left,
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
