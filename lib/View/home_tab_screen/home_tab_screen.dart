import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/View/Bottomnavpage/List_of_pages/Profile_page/profile.dart';
import 'package:freeze_app/View/report_screen/report_screen.dart';
import 'package:freeze_app/View/Bottomnavpage/List_of_pages/Wallet_page/Wallet.dart';
import 'package:freeze_app/http/response/get_user_profile_response.dart';
import 'package:freeze_app/shared/sharedservice.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../Model/Theme/app_color.dart';
import '../home_screen/home_screen.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  int currentIndex = 0;
  int counter = 0;

  GetUserProfileResponse? user;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  final PageController pagecontroll = PageController();

  List _pages = [
    //  Innovation_rank(),
    Homescreen(),
    ReportScreen(),
    Wallet(),
    Profile()
  ];

  List<SalomonBottomBarItem> _items = <SalomonBottomBarItem>[
    SalomonBottomBarItem(
      icon: Icon(Icons.home),
      title: Text("Home"),
      selectedColor: Colors.purple,
    ),
    SalomonBottomBarItem(
      icon: Icon(Icons.insert_drive_file),
      title: Text("Report"),
      selectedColor: Colors.purple,
    ),
    SalomonBottomBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      title: Text("Wallet"),
      selectedColor: Colors.purple,
    ),
    SalomonBottomBarItem(
      icon: Icon(Icons.person),
      title: Text("Profile"),
      selectedColor: Colors.purple,
    ),
  ].toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserDetail();
  }

  void getUserDetail() async {
    user = await PreferenceHelper.getUser();

    // Uint8List bytes = base64.decode(user?.img ?? '');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
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
            if (user != null)
              Text(
                user?.name ?? '',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              )
          ],
        ),
        actions: [
          // if (user != null && user?.img != null)
          //   Image.memory(base64Decode(user?.img ?? ''))
          Image.asset('assets/images/Profile Circle.png'),
        ],
      ),
      backgroundColor: AppColors.scaffoldBG,
      body: _pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(20.r),
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
        child: SalomonBottomBar(
          unselectedItemColor: AppColors.iconColor,
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i), items: _items,

          // backgroundColor: AppColors.scaffoldBG,
        ),
      ),
    );
  }
}
