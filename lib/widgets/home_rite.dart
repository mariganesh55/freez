import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeRite extends StatefulWidget {
  const HomeRite({Key? key}) : super(key: key);

  @override
  State<HomeRite> createState() => _HomeRiteState();
}

class _HomeRiteState extends State<HomeRite> {
  bool _click1 = false;
  bool _click2 = false;
  bool _click3 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Card(
        child: Container(
          height: size.height * 0.7,
          width: size.width * 0.94,

          // margin: EdgeInsets.only(
          //   top: 100,
          //   left: 14.1,
          //   right: 14.1,
          // ),
          decoration: BoxDecoration(color: AppColors.scaffoldBG,

              //   borderRadius: BorderRadius.circular(49.r),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.41, left: 20.1),
                      child: Text('RITE Foundation',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    Container(
                      height: 20.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: AppColors.scaffoldBG,

                          //   borderRadius: BorderRadius.circular(49.r),
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
                          ],
                          shape: BoxShape.circle),
                      child: InkWell(
                        child: Text(
                          'X',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, left: 20.1),
                  child: Text('Choose Amount',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 90.w,
                        height: 86.h,
                        margin: EdgeInsets.only(
                          top: 31,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: _click1 ? Colors.red : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("\$50",
                              style: GoogleFonts.poppins(
                                  color: _click1 ? Colors.red : Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      onTap: () => {
                        setState(() {
                          _click1 = !_click1;
                        })
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 90.w,
                        height: 86.h,
                        margin: EdgeInsets.only(
                          top: 31,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: _click2 ? Colors.red : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("\$100",
                              style: GoogleFonts.poppins(
                                  color: _click2 ? Colors.red : Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      onTap: () => {
                        setState(() {
                          _click2 = !_click2;
                        })
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 90.w,
                        height: 86.h,
                        margin: EdgeInsets.only(
                          top: 31,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: _click3 ? Colors.red : Colors.white),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("\$500",
                              style: GoogleFonts.poppins(
                                  color: _click3 ? Colors.red : Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      onTap: () => {
                        setState(() {
                          _click3 = !_click3;
                        })
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 19.9.w, right: 11.0.w),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFF9D9D9D).withOpacity(0.3),
                          height: 15,
                        )),
                  ),
                  Text("or",
                      style: GoogleFonts.poppins(
                          color: Color(0xFF9D9D9D),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 11.0.w, right: 19.9.w),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFF9D9D9D).withOpacity(0.3),
                          height: 15,
                        )),
                  ),
                ]),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 76.h,
                  width: 263.w,
                  margin: EdgeInsets.only(left: 49.4.w, right: 49.4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "Enter Price Manually",
                        hintStyle: GoogleFonts.poppins(
                            color: Color(0xFF9D9D9D),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Color(0xFFCDCDCD).withOpacity(0.15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.w),
                        )),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 329.w,
                    height: 56.h,
                    margin:
                        EdgeInsets.only(top: 25, left: 16.9.w, right: 16.9.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xffFF617D),
                            AppColors.colorLightPink,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text("Donate Now",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
