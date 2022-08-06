import 'dart:ui';

import 'package:flutter/material.dart';

class SuccessfulWidget extends StatelessWidget {
  final String message;
  const SuccessfulWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
    });
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Container(
              width: 345,
              height: 156,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/common/correct.png',
                      width: 63,
                      height: 63,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      message,
                      style: const TextStyle(
                          color: Color.fromRGBO(34, 42, 39, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 24),
                    )
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black.withOpacity(0.3),
        ));
  }
}
