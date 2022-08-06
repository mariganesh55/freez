import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/Bottomnavpage/List_of_pages/Profile_page/advertise.dart';
import 'package:freeze_app/View/Bottomnavpage/List_of_pages/Profile_page/bank_details.dart';
import 'package:freeze_app/View/Bottomnavpage/List_of_pages/Profile_page/transaction_details.dart';

import '../../../SignIn/cheaterbox.dart';
import '../../../SignIn/login_screen/login_screen.dart';
import 'personal_details.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            splashColor: Color(0xffC860FF),
            child: Container(
              color: Color(0xffC860FF).withOpacity(0.2),
              height: 44.h,
              width: double.maxFinite,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.asset('assets/images/u_transaction.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Transaction Details',
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Transaction_Details()));
            },
          ),
          InkWell(
            splashColor: Colors.grey,
            child: SizedBox(
              height: 44.h,
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/bank.svg'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Bank Details',
                      style: TextStyle(fontSize: 22.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Bankdetails()));
            },
          ),
          InkWell(
            splashColor: Color(0xffC860FF),
            child: Container(
              color: Color(0xffC860FF).withOpacity(0.2),
              height: 44.h,
              width: double.maxFinite,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.asset('assets/images/feed.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Personal_details()));
            },
          ),
          InkWell(
            splashColor: Colors.grey,
            child: SizedBox(
              height: 44.h,
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/prescription.svg'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Subscription',
                      style: TextStyle(fontSize: 22.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Advertise()));
            },
          ),
          InkWell(
            splashColor: Color(0xffC860FF),
            child: Container(
              color: Color(0xffC860FF).withOpacity(0.2),
              height: 44.h,
              width: double.maxFinite,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.asset('assets/images/Vector.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Cheater Box',
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ChearterBox()));
            },
          ),
          //    SizedBox(height: 10.h,),
          InkWell(
            splashColor: Colors.grey,
            child: SizedBox(
              height: 44.h,
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/login.svg'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(fontSize: 22.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
          ),
          SizedBox(
            height: 100.h,
          )
        ],
      ),
    );
  }
}
