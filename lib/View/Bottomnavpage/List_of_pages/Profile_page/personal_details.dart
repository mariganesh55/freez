import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

import 'package:google_fonts/google_fonts.dart';

class Personal_details extends StatefulWidget {
  const Personal_details({Key? key}) : super(key: key);

  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xff65019A),
              height: 53.h,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Personal Details',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )),
            ),
            Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100.h,
                    width: 130.w,
                    margin: EdgeInsets.only(top: 35, left: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.w),
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
                        //color: Colors.amberAccent,
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMEOk8H8iksDM_MljKKPQTaYeTJ3yOjPapQ&usqp=CAU",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 100.h,
                    width: 150.w,
                    margin: EdgeInsets.only(
                      top: 35,
                      left: 30.64,
                    ),
                    // decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.w),
                    //   color: Colors.amberAccent,
                    // ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Raja',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text('154453486486',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.normal)),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              height: 424.h,
              width: 341.w,
              margin: EdgeInsets.only(top: 20.5.h),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 8.41,
                      left: 10.48,
                    ),
                    child: Text('Designation    :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Started From  :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Gender             :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Reporting To   :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Expiry Date      :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('DOB                   :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Location            :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Age                     :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Address             :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 7.41,
                      left: 10.48,
                    ),
                    child: Text('Mobile No         :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
