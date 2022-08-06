import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/Model/cheaterboxModel.dart';
import 'package:freeze_app/Model/getReportModel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../Model/DetailModel.dart';
import '../../../../Model/core/appurl.dart';
import 'package:http/http.dart' as http;

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<DataModel> dataModel = <DataModel>[

    DataModel(name: 'Tamilvanan',date:"20/20/20", image: "https://curehht.org/wp-content/uploads/2017/05/water-background-image.jpg"),
    DataModel(name: 'Tamilvanan',date:"20/20/20", image: "https://curehht.org/wp-content/uploads/2017/05/water-background-image.jpg"),
    DataModel(name: 'Tamilvanan',date:"20/20/20", image: "https://curehht.org/wp-content/uploads/2017/05/water-background-image.jpg"),
    DataModel(name: 'Tamilvanan',date:"20/20/20", image: "https://curehht.org/wp-content/uploads/2017/05/water-background-image.jpg"),


  ];

  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LinearEmployeePoints(),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [CircularMonthlyPoints(), CircularMonthlyPoints()],
            ),
            ReportEmployeeDetails(
              getReportDetails: dataModel,
            )
          ],
        ),
      ),
    );
  }
}

class ReportBackGround extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;

  const ReportBackGround(
      {Key? key, required this.child, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
        child: child);
  }
}

class LinearEmployeePoints extends StatelessWidget {
  const LinearEmployeePoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReportBackGround(
      height: 71,
      width: 360,
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
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
                    ],
                  ),
                  Text(
                    '130',
                    style: TextStyle(color: Color(0xffF2F3F2), fontSize: 14.sp),
                  )
                ],
              )),
          Text(
            'Max 200',
            style: TextStyle(color: Color(0xffF2F3F2), fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}

class CircularMonthlyPoints extends StatelessWidget {
  const CircularMonthlyPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReportBackGround(
        height: 192,
        width: 151,
        child: Column(
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    ));
  }
}

class ReportButton extends StatelessWidget {
  final String? title;
  const ReportButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReportBackGround(
        height: 33,
        width: 69,
        child: Center(
      child: Text(
        title!,
        style: TextStyle(color: Colors.white, fontSize: 11.sp),
      ),
    ));
  }
}

class ReportEmployeeDetails extends StatelessWidget {
  final List<DataModel>? getReportDetails;

  const ReportEmployeeDetails({
    Key? key,
    required this.getReportDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReportBackGround(

         width: 330,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
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
            ReportButton(title: "Name"),
            ReportButton(title: "Date"),
          ],
        ),

        ListView.builder(
   shrinkWrap: true,
            itemCount: getReportDetails!.length,
            itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 10.r,
                        //  backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            getReportDetails![i].image.toString()),
                      ),

                      //  SizedBox(width: 2.h,),

                      Text(
                        getReportDetails![i].name.toString(),
                        style: TextStyle(
                            color: Color(0xff939F9A), fontSize: 12.sp),
                      ),

                      SizedBox(
                        width: 30.w,
                      ),

                      Text(
                        getReportDetails![i].date.toString(),
                        style: TextStyle(
                            color: Color(0xff939F9A), fontSize: 12.sp),
                      )
                    ],
                  ),
                )),
      ],
    ));
  }
}
