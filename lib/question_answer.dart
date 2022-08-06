import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Model/Theme/app_color.dart';
import 'View/Bottomnavpage/List_of_pages/Profile_page/transaction_details.dart';
import 'View/home_tab_screen/home_tab_screen.dart';

class Qusetion_details extends StatefulWidget {
  const Qusetion_details({Key? key}) : super(key: key);

  @override
  State<Qusetion_details> createState() => _Qusetion_detailsState();
}

class _Qusetion_detailsState extends State<Qusetion_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      // appBar: AppBar(
      //   backgroundColor: AppColors.scaffoldBG,
      //   automaticallyImplyLeading: false,
      //   title: Center(
      //     child: Text('Q&A For Add',
      //         style: GoogleFonts.montserrat(
      //             color: Colors.white,
      //             fontSize: 22.sp,
      //             fontWeight: FontWeight.normal)),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xff65019A),
                height: 53.h,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Q&A For Add',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                )),
              ),
              Container(
                height: 595.h,
                width: 340.w,
                margin: EdgeInsets.only(top: 18.06, left: 12.9),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 20, left: 10),
                      child: Text('Question 1',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textfielddata(
                          widget: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Text('Yes/No',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      child: Center(
                        child: Container(
                            height: 39.h,
                            width: 167.w,
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
                                'Submit',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeTabScreen()));
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
