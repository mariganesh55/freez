import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/Model/core/appurl.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Model/cheaterboxModel.dart';
import '../../ModelView/database/datasourcemodel.dart';
import '../Bottomnavpage/bottom_nav.dart';

import 'package:http/http.dart' as http;

class ChearterBox extends StatefulWidget {
  const ChearterBox({Key? key}) : super(key: key);

  @override
  State<ChearterBox> createState() => _ChearterBoxState();
}

class _ChearterBoxState extends State<ChearterBox> {
  bool isloading = false;
  bool isLiked = false;

  List<CheaterBoxData?> cheaterData = [];

  init() async {
    CheaterBox? data = await Authenticate_user().fetchCheaterData();
    cheaterData = data!.cheaterBoxData!;
    print(cheaterData.toString());
    setState(() {
      isloading = true;
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBG,
          automaticallyImplyLeading: false,
          title: Center(
            child: Text('Cheater Box',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.normal)),
          ),
        ),
        body: isloading || cheaterData.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Container(
                            alignment: Alignment.topRight,
                            height: 35.h,
                            width: 91.51.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Add',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 18.sp),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => BottomNav()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: cheaterData.length,
                        itemBuilder: (context, i) {
                          final image = Base64Decoder()
                              .convert(cheaterData[i]!.img.toString());
                          print(Base64Decoder()
                              .convert(cheaterData[i]!.img.toString()));
                          var userData = cheaterData[i];
                          return Container(
                            height: 330.h,
                            width: 330.w,
                            //    margin: EdgeInsets.only(top: 53, left: 30, right: 30),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 45.h,
                                      width: 45.w,
                                      margin: EdgeInsets.only(
                                          top: 9, left: 12, right: 13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          //borderRadius: BorderRadius.circular(20.w),
                                          color: Colors.amberAccent,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                cheaterData[i]!.img.toString(),
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(userData!.name.toString(),
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 10.sp,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                          SizedBox(
                                            height: 11.h,
                                          ),
                                          Text(userData.email.toString(),
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.grey,
                                                  fontSize: 10.sp,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ]),
                                    SizedBox(
                                      width: 10,
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
                                Container(
                                    height: 202.h,
                                    width: 301.w,
                                    margin: EdgeInsets.only(
                                        top: 25, left: 14, right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Image.memory(image)),
                                SizedBox(
                                  height: 50,
                                  width: 300,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          padding: EdgeInsets.only(
                                              top: 13, left: 31),
                                          icon: Icon(
                                              Icons.favorite_border_sharp,
                                              color: Colors.white)),
                                      Text(
                                        '50',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        padding:
                                            EdgeInsets.only(top: 13, left: 31),
                                        icon: FaIcon(
                                            FontAwesomeIcons.commentDots,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '40',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          padding: EdgeInsets.only(
                                              top: 13, left: 31),
                                          icon: FaIcon(
                                            FontAwesomeIcons.paperPlane,
                                            color: Colors.white,
                                          )),
                                      Text(
                                        '80',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
