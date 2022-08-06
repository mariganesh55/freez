import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

class Transaction_Details extends StatelessWidget {
  const Transaction_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              color: Color(0xff65019A),
              height: 53.h,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Transaction Details',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 277.h,
              width: 341.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(21, 21, 21, 0.9),
                        blurRadius: 13,
                        offset: Offset(5, 5)),
                    BoxShadow(
                        color: Color.fromRGBO(62, 62, 62, 0.9),
                        blurRadius: 10,
                        offset: Offset(-5, -5)),
                    BoxShadow(
                        color: Color.fromRGBO(21, 21, 21, 0.2),
                        blurRadius: 10,
                        offset: Offset(5, -5)),
                    BoxShadow(
                        color: Color.fromRGBO(21, 21, 21, 0.2),
                        blurRadius: 10,
                        offset: Offset(-5, 5)),
                    BoxShadow(
                        color: Color.fromRGBO(21, 21, 21, 0.5),
                        blurRadius: 2,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(-1, -1)),
                    BoxShadow(
                        color: Color.fromRGBO(62, 62, 62, 0.3),
                        blurRadius: 2,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(1, 1)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' Name',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Eg : tamilvanan',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' AC/no',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('64345444542'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        ' Transaction',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('Completed'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' Date',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('20/11/1997'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' Time',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('18:33'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class textfielddata extends StatelessWidget {
  final Widget widget;
  const textfielddata({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36.h,
        width: 220.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5.r), boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.9),
              blurRadius: 8,
              offset: Offset(-5, -5)),
          BoxShadow(
              color: Color.fromRGBO(62, 62, 62, 0.9),
              blurRadius: 8,
              offset: Offset(5, 5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.2),
              blurRadius: 5,
              offset: Offset(-5, 5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.2),
              blurRadius: 5,
              offset: Offset(5, -5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.5),
              blurRadius: 8,
              blurStyle: BlurStyle.inner,
              offset: Offset(1, 1)),
          BoxShadow(
              color: Color.fromRGBO(62, 62, 62, 0.3),
              blurRadius: 8,
              blurStyle: BlurStyle.inner,
              offset: Offset(-1, -1)),
        ]),
        child: widget);
  }
}
