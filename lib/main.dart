import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:freeze_app/Model/core/appcache.dart';
import 'package:freeze_app/View/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/shared/sharedservice.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import 'View/Bottomnavpage/List_of_pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedService().init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = SharedService().setUserName('email') != null;

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child) => GetMaterialApp(
              builder: (_, widget) => ResponsiveWrapper.builder(
                  ClampingScrollWrapper.builder(context, widget!),
                  breakpoints: [
                    ResponsiveBreakpoint.resize(360, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(600, name: TABLET),
                    ResponsiveBreakpoint.resize(800, name: DESKTOP),
                    ResponsiveBreakpoint.autoScale(1600, name: 'xl')
                  ]),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                // backgroundColor: AppColors.scaffoldBG,
                primarySwatch: Colors.blue,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
              home: child,
            ),
        child: isLoggedIn ? BottomNav() : SplashScreen());
  }
}
