import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolyData extends StatelessWidget {
  final double h;
  final double w;
  final String img;
  final String title;
  String? num;
  final Color polyColor;
  final onTap;
  PolyData(
      {Key? key,
      required this.h,
      required this.w,
      required this.img,
      required this.title,
      required this.num,
      required this.polyColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: polyColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
            //  SizedBox(height: 10.h,),
            Text(
              num.toString(),
              style: TextStyle(
                  color: polyColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
