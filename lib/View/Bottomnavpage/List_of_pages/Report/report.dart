import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/Model/getReportModel.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../http/httpurls.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<GetReportData> getReportDetails = [];
  bool isloading = true;

  Future<List<GetReportData>> dataReportFetch() async {
    var client = http.Client();

    Map<String, String> headers = {};
    headers['Accept'] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Content-Type"] = "application/x-www-fprm-urlencpder";

    final res = await client.get(
      Uri.parse(HttpUrls.getReport),
      headers: headers,
    );

    if (res.statusCode == 200) {
      final jsonString = jsonDecode(res.body);
      for (var value in jsonString) {
        getReportDetails.add(GetReportData.fromJson(value));
      }

      print(getReportDetails);

      isloading = false;
      setState(() {});

      return getReportDetails;

      // rolesData!.add(jsonString);

    } else {
      throw Exception('invalid data');
    }
  }

  @override
  void initState() {
    super.initState();
    dataReportFetch();
  }

  @override
  void dispose() {
    dataReportFetch();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 71.h,
                  width: 340.w,
                  padding: EdgeInsets.only(left: 10.w),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today Process',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          padding: EdgeInsets.all(4.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  LinearPercentIndicator(
                                    width: 280.w,
                                    animation: true,
                                    animationDuration: 1000,
                                    lineHeight: 20.0,

                                    percent: 0.2,

                                    barRadius: Radius.circular(10),
                                    //   linearStrokeCap: LinearStrokeCap.butt,
                                    progressColor: Colors.red,
                                  ),
                                  LinearPercentIndicator(
                                      width: 170.0,
                                      animation: true,
                                      animationDuration: 1200,
                                      lineHeight: 20.0,
                                      percent: 0.7,
                                      barRadius: Radius.circular(10),
                                      //   linearStrokeCap: LinearStrokeCap.butt,
                                      linearGradient: LinearGradient(
                                          colors: [
                                            Color(0xff2B89CD),
                                            Color(0xff924EBD),
                                            Color(0xffCD2BB3)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight)),

                                  // LinearProgressIndicator(
                                  //   value: 0.75,
                                  //   minHeight: 16.w,
                                  //   backgroundColor:  Color(0xffD4D4D4
                                  //   ),
                                  //   color: Colors.purple[100]
                                  // ),
                                  // LinearProgressIndicator(
                                  //   minHeight: 16.w,
                                  //   value: 0.5,
                                  //   backgroundColor: Color(0xffD4D4D
                                  //   ),//
                                  //   color: Colors.blue,
                                  // ),
                                ],
                              ),
                              Text(
                                '130',
                                style: TextStyle(
                                    color: Color(0xffF2F3F2), fontSize: 14.sp),
                              )
                            ],
                          )),
                      Text(
                        'Max 200',
                        style: TextStyle(
                            color: Color(0xffF2F3F2), fontSize: 14.sp),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 131.h,
                        width: 141.w,
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
                          children: [
                            Text(
                              ' Monthly Target',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircularPercentIndicator(
                              radius: 30.0.r,
                              lineWidth: 13.0.r,
                              animation: true,
                              percent: 0.7,
                              footer: new Text(
                                "100/ 25",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0.sp,
                                    color: Colors.white),
                              ),
                              circularStrokeCap: CircularStrokeCap.square,
                              progressColor: Colors.purple,
                              backgroundColor: Colors.yellowAccent,
                            ),
                          ],
                        )),
                    Container(
                        height: 131.h,
                        width: 141.w,
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
                          children: [
                            Text(
                              ' Monthly Target',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircularPercentIndicator(
                              radius: 30.0.r,
                              lineWidth: 13.0.r,
                              animation: true,
                              percent: 0.7,
                              footer: new Text(
                                "100/ 25",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0.sp,
                                    color: Colors.white),
                              ),
                              circularStrokeCap: CircularStrokeCap.square,
                              progressColor: Colors.purple,
                              backgroundColor: Colors.yellowAccent,
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  height: 270.h,
                  width: 330.w,
                  padding: EdgeInsets.all(10.r),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(
                          'Details',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 33.h,
                              width: 69.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
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
                              child: Center(
                                child: Text(
                                  'Name',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11.sp),
                                ),
                              )),
                          Container(
                              height: 33.h,
                              width: 69.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
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
                              child: Center(
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11.sp),
                                ),
                              ))
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: getReportDetails.length,
                            itemBuilder: (ctx, i) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    // height: 20.h,

                                    // width: 80.w,

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircleAvatar(
                                          radius: 10.r,
                                          //  backgroundColor: Colors.grey,
                                          backgroundImage: NetworkImage(
                                              getReportDetails[i]
                                                  .image
                                                  .toString()),
                                        ),

                                        //  SizedBox(width: 2.h,),

                                        Text(
                                          getReportDetails[i].name.toString(),
                                          style: TextStyle(
                                              color: Color(0xff939F9A),
                                              fontSize: 12.sp),
                                        ),

                                        SizedBox(
                                          width: 30.w,
                                        ),

                                        Text(
                                          getReportDetails[i].date.toString(),
                                          style: TextStyle(
                                              color: Color(0xff939F9A),
                                              fontSize: 12.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ),

                // Container(
                //   height: 60.h,
                //   width:  360.w,
                //   child: Row(
                //     children: [
                //       new LinearPercentIndicator(
                //         width: 140.0,
                //         lineHeight: 14.0,
                //         percent: 0.5,
                //         center: Text(
                //           "50.0%",
                //           style: new TextStyle(fontSize: 12.0),
                //         ),
                //         trailing: Icon(Icons.mood),
                //         linearStrokeCap: LinearStrokeCap.roundAll,
                //         backgroundColor: Colors.grey,
                //         progressColor: Colors.blue,
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
    );
  }
}
