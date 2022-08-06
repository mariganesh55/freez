import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_tab_screen/home_tab_screen.dart';

class Subcription extends StatefulWidget {
  const Subcription({Key? key}) : super(key: key);

  @override
  State<Subcription> createState() => _SubcriptionState();
}

class _SubcriptionState extends State<Subcription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBG,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Subscriptions',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 180.h,
              width: 326.w,
              decoration: BoxDecoration(
                  color: Color(0xff161515),
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 11.w,
                        offset: Offset(1, 1)),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-1, -1),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-3, 3),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(3, -3),
                    ),
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(-1, -1)),
                    BoxShadow(
                        color: Color(0xff161515),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(1, 1)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 15.93,
                      left: 20,
                    ),
                    child: Text('Monhtly Plan',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Amount',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('1000',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                        height: 27.h,
                        width: 117.w,
                        margin: EdgeInsets.only(top: 35, left: 130),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 7.w,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color(0xff28003),
                                  blurRadius: 2.w,
                                  offset: Offset(-1, -1)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(-3, 3)),
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 2.w,
                                  //blurStyle: BlurStyle.inner,
                                  offset: Offset(-3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  //  blurStyle: BlurStyle.inner,
                                  offset: Offset(3, 3)),
                            ],
                            color: Color(0xff65019A)),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeTabScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 180.h,
              width: 326.w,
              decoration: BoxDecoration(
                  color: Color(0xff161515),
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 11.w,
                        offset: Offset(1, 1)),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-1, -1),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-3, 3),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(3, -3),
                    ),
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(-1, -1)),
                    BoxShadow(
                        color: Color(0xff161515),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(1, 1)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 15.93,
                      left: 20,
                    ),
                    child: Text('Monhtly Plan',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Amount',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('1000',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                        height: 27.h,
                        width: 117.w,
                        margin: EdgeInsets.only(top: 35, left: 130),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 7.w,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color(0xff28003),
                                  blurRadius: 2.w,
                                  offset: Offset(-1, -1)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(-3, 3)),
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 2.w,
                                  //blurStyle: BlurStyle.inner,
                                  offset: Offset(-3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  //  blurStyle: BlurStyle.inner,
                                  offset: Offset(3, 3)),
                            ],
                            color: Color(0xff65019A)),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeTabScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 180.h,
              width: 326.w,
              decoration: BoxDecoration(
                  color: Color(0xff161515),
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 11.w,
                        offset: Offset(1, 1)),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-1, -1),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(-3, 3),
                    ),
                    BoxShadow(
                      color: Color(0xff161515),
                      blurRadius: 6.w,
                      offset: Offset(3, -3),
                    ),
                    BoxShadow(
                        color: Color(0xff565555),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(-1, -1)),
                    BoxShadow(
                        color: Color(0xff161515),
                        blurRadius: 6.w,
                        //  blurStyle: BlurStyle.inner,
                        offset: Offset(1, 1)),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 15.93,
                      left: 20,
                    ),
                    child: Text('Monhtly Plan',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Amount',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('1000',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.93,
                          left: 20,
                        ),
                        child: Text('Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                        height: 27.h,
                        width: 117.w,
                        margin: EdgeInsets.only(top: 35, left: 130),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 7.w,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color(0xff28003),
                                  blurRadius: 2.w,
                                  offset: Offset(-1, -1)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  offset: Offset(-3, 3)),
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 2.w,
                                  //blurStyle: BlurStyle.inner,
                                  offset: Offset(-3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 2.w,
                                  //  blurStyle: BlurStyle.inner,
                                  offset: Offset(3, 3)),
                            ],
                            color: Color(0xff65019A)),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeTabScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
