import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.r),
                height: 200.h,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (ctx, i) => Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                          child: Wallet_details(),
                        )),
              ),
            )
          ],
        ));
  }
}

class Wallet_details extends StatelessWidget {
  const Wallet_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 300.w,
      padding: EdgeInsets.all(10.r),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20.r), boxShadow: [
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
                      style: TextStyle(color: Colors.white, fontSize: 11.sp),
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
                      style: TextStyle(color: Colors.white, fontSize: 11.sp),
                    ),
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (ctx, i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        // height: 20.h,

                        // width: 80.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 10.r,
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(''),
                            ),

                            //  SizedBox(width: 2.h,),

                            Text(
                              'tamil',
                              style: TextStyle(
                                  color: Color(0xff939F9A), fontSize: 12.sp),
                            ),

                            SizedBox(
                              width: 30.w,
                            ),

                            Text(
                              '12th december 2022',
                              style: TextStyle(
                                  color: Color(0xff939F9A), fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
