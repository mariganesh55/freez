import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_tab_screen/home_tab_screen.dart';

class Advertise extends StatefulWidget {
  const Advertise({Key? key}) : super(key: key);

  @override
  State<Advertise> createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBG,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Advertisement',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            child: Container(
              height: 375.h,
              width: 325.w,
              margin: EdgeInsets.only(
                top: 45,
                left: 19,
                right: 14,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFBABABA),
                    Color(0xFFCECECE),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(78, 78, 78, 0.9),
                      spreadRadius: -90,
                      offset: Offset(3, 3)),
                  BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      spreadRadius: -90,
                      offset: Offset(-3, -3)),
                  BoxShadow(
                      color: Color.fromRGBO(78, 78, 78, 0.2),
                      spreadRadius: -20,
                      offset: Offset(3, -3)),
                  BoxShadow(
                      color: Color.fromRGBO(78, 78, 78, 0.2),
                      spreadRadius: -20,
                      offset: Offset(-3, 3)),
                  BoxShadow(
                      color: Color.fromRGBO(78, 78, 78, 0.5),
                      spreadRadius: -50,
                      offset: Offset(-1, -1)),
                  BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.3),
                      spreadRadius: -30,
                      offset: Offset(1, 1)),
                ],
              ),
              child: Center(
                child: Text('Add Image',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.normal)),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomeTabScreen()));
              },
              child: Container(
                height: 35,
                width: 110,
                margin: EdgeInsets.only(
                  top: 33,
                ),
                decoration: BoxDecoration(color: Color(0xFFE5E5EA)),
                child: Center(
                  child: Text('Add',
                      style: GoogleFonts.montserrat(
                          color: AppColors.colorRed,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
