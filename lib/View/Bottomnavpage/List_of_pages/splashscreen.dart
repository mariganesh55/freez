import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Model/Theme/app_color.dart';
import '../../../splashscrreen_details.dart';
import '../../SignIn/login_screen/login_screen.dart';
import '../../home_tab_screen/home_tab_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool visible = false;
  bool isLoggedIn = true;

  @override
  void initState() {
    //   bool _isLogged = Appcache.sharecache.getBool('isLogged') ?? false;
    Future.delayed(
        const Duration(milliseconds: 3500),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                child: isLoggedIn ? const HomeTabScreen() : LoginScreen(),
                duration: const Duration(milliseconds: 350))));
    WidgetsBinding.instance
        .addPostFrameCallback((_) => setState(() => visible = true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Stack(
              children: [
                SizedBox(
                  height: 100.w,
                  width: 336.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      poly_images1(
                        h: 104.w,
                        w: 106.w,
                        img: 'assets/images/1.png',
                        title: 'Industrial',
                        polyColor: Colors.white,
                      ),
                      poly_images1(
                        h: 104.w,
                        w: 106.w,
                        img: 'assets/images/1.png',
                        title: 'Government',
                        polyColor: Colors.white,
                      ),
                      poly_images1(
                        h: 104.w,
                        w: 106.w,
                        img: 'assets/images/1.png',
                        title: 'Domestic',
                        polyColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 75.h,
                  left: 5.w,
                  child: poly_images1(
                      h: 122.h,
                      w: 133.w,
                      img: 'assets/images/2.png',
                      title: 'Distributors',
                      polyColor: Colors.white),
                ),
                Positioned(
                  top: 75.h,
                  left: 105.w,
                  child: poly_images1(
                      h: 122.h,
                      w: 133.w,
                      img: 'assets/images/2.png',
                      title: 'Dealers',
                      polyColor: Colors.white),
                ),
                Positioned(
                  top: 75.h,
                  left: 205.w,
                  child: poly_images1(
                      h: 122.h,
                      w: 133.w,
                      img: 'assets/images/2.png',
                      title: 'Technician',
                      polyColor: Colors.white),
                ),
                Positioned(
                    top: 159.h,
                    left: 45.w,
                    child: poly_images1(
                        h: 112.h,
                        w: 139.w,
                        img: 'assets/images/3.png',
                        title: 'Investors',
                        polyColor: Colors.white)),
                Positioned(
                    top: 159.h,
                    left: 160.w,
                    child: poly_images1(
                        h: 112.h,
                        w: 139.w,
                        img: 'assets/images/99.png',
                        title: 'B.Partner',
                        polyColor: Colors.white)),
                Positioned(
                    top: 190.h,
                    left: 88.w,
                    child: poly_images1(
                        h: 140.h,
                        w: 166.w,
                        img: 'assets/images/4.png',
                        title: '      GRN \n Innovation',
                        polyColor: Colors.black)),
                Positioned(
                  top: 290.h,
                  right: 0.1.w,
                  child: SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 1.w,
                        ),
                        Text('Product',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 1.w,
                        ),
                        Container(
                          width: 80.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/background.png'),
                          )),
                          child: Image.asset('assets/images/Rectangle.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text('Service',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold)),

                        //    SvgPicture.asset('assets/images/background.png',width: 89.w,height: 80.h,),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 310.h,
                    right: 80.w,
                    child: poly_images1(
                      h: 150.h,
                      w: 180.w,
                      img: 'assets/images/5.png',
                      title: '       Rite \n Foundation',
                      polyColor: Colors.black,
                    )),
                Positioned(
                    top: 355.h,
                    right: 120.w,
                    child: poly_images1(
                      h: 160.h,
                      w: 230.w,
                      img: 'assets/images/8.png',
                      title: 'Advisor',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 355.h,
                    left: 120.w,
                    child: poly_images1(
                      h: 160.h,
                      w: 230.w,
                      img: 'assets/images/11.png',
                      title: 'Admin',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 420.h,
                    right: 180.w,
                    child: poly_images1(
                      h: 170.h,
                      w: 178.w,
                      img: 'assets/images/6.png',
                      title: 'Institution',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 420.h,
                    left: 84.w,
                    child: poly_images1(
                      h: 170.h,
                      w: 178.w,
                      img: 'assets/images/6.png',
                      title: 'Trust',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 420.h,
                    left: 184.w,
                    child: poly_images1(
                      h: 170.h,
                      w: 178.w,
                      img: 'assets/images/6.png',
                      title: 'Association',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 520.h,
                    left: 220.w,
                    child: poly_images1(
                      h: 150.h,
                      w: 130.w,
                      img: 'assets/images/7.png',
                      title: 'Job Seekers',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 520.h,
                    left: 105.w,
                    child: poly_images1(
                      h: 150.h,
                      w: 130.w,
                      img: 'assets/images/7.png',
                      title: 'Public',
                      polyColor: Colors.white,
                    )),
                Positioned(
                    top: 520.h,
                    right: 210.w,
                    child: poly_images1(
                      h: 150.h,
                      w: 150.w,
                      img: 'assets/images/7.png',
                      title: 'Students',
                      polyColor: Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
