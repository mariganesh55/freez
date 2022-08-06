import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_tab_screen/home_tab_screen.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBG,
        leading: Image.asset(
          'assets/images/Memoji Boys 5-17.png',
          width: 48.w,
          height: 55.h,
        ),
        title: Row(
          children: [
            Text('Hey',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.normal)),
            SizedBox(
              width: 10,
            ),
            Text(
              'Magesh',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomeTabScreen())),
              icon: Icon(Icons.add))
        ],
      ),
      backgroundColor: AppColors.scaffoldBG,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330.h,
              width: 350.w,
              margin: EdgeInsets.only(top: 53, left: 30, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.scaffoldBG,
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
                children: [
                  Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45.h,
                          width: 45.w,
                          margin: EdgeInsets.only(top: 9, left: 12, right: 13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //borderRadius: BorderRadius.circular(20.w),
                              color: Colors.amberAccent,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMEOk8H8iksDM_MljKKPQTaYeTJ3yOjPapQ&usqp=CAU",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 35.h,
                          width: 150.w,
                          margin: EdgeInsets.only(
                            left: 13,
                          ),
                          // decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20.w),
                          //   color: Colors.amberAccent,
                          // ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rajen_Ravi',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal)),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Text('Slam Fitness Studio',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        IconButton(
                            color: Colors.white,
                            iconSize: 35,
                            padding: EdgeInsets.only(left: 55),
                            alignment: Alignment.topRight,
                            onPressed: () {},
                            icon: Icon(Icons.more_vert_outlined))
                      ],
                    ),
                  ),
                  Container(
                    height: 202.h,
                    width: 301.w,
                    margin: EdgeInsets.only(top: 25, left: 14, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "http://bsmedia.business-standard.com/_media/bs/img/article/2017-09/02/full/1504370060-4847.jpg"))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.only(top: 13, left: 31),
                            icon: Icon(Icons.favorite_border_sharp)),
                      ),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '50',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 13, left: 31),
                          icon: FaIcon(FontAwesomeIcons.commentDots),
                        ),
                      ),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '40',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 13, left: 31),
                          icon: FaIcon(
                            FontAwesomeIcons.paperPlane,
                          )),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '80',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 330.h,
              width: 350.w,
              margin: EdgeInsets.only(top: 53, left: 30, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.scaffoldBG,
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
                children: [
                  Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45.h,
                          width: 45.w,
                          margin: EdgeInsets.only(top: 9, left: 12, right: 13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //borderRadius: BorderRadius.circular(20.w),
                              color: Colors.amberAccent,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMEOk8H8iksDM_MljKKPQTaYeTJ3yOjPapQ&usqp=CAU",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 35.h,
                          width: 150.w,
                          margin: EdgeInsets.only(
                            left: 13,
                          ),
                          // decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20.w),
                          //   color: Colors.amberAccent,
                          // ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rajen_Ravi',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal)),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Text('Slam Fitness Studio',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        IconButton(
                            color: Colors.white,
                            iconSize: 35,
                            padding: EdgeInsets.only(left: 55),
                            alignment: Alignment.topRight,
                            onPressed: () {},
                            icon: Icon(Icons.more_vert_outlined))
                      ],
                    ),
                  ),
                  Container(
                    height: 202.h,
                    width: 301.w,
                    margin: EdgeInsets.only(top: 25, left: 14, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "http://bsmedia.business-standard.com/_media/bs/img/article/2017-09/02/full/1504370060-4847.jpg"))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.only(top: 13, left: 31),
                            icon: Icon(Icons.favorite_border_sharp)),
                      ),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '50',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 13, left: 31),
                          icon: FaIcon(FontAwesomeIcons.commentDots),
                        ),
                      ),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '40',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 13, left: 31),
                          icon: FaIcon(
                            FontAwesomeIcons.paperPlane,
                          )),
                      Container(
                        height: 14,
                        width: 16,
                        margin: EdgeInsets.only(top: 10, left: 6),
                        child: Text(
                          '80',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
