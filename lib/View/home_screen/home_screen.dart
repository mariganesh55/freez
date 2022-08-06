import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/View/home_screen/HomeController.dart';
import 'package:get/get.dart';
//route
import 'package:page_transition/page_transition.dart';

//Theme
import '../../../../Model/Theme/app_color.dart';
import '../../../../widgets/calender_custom.dart';
import '../../../../widgets/home_rite.dart';
import '../../../../widgets/poly_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // List<GetRoles>? rolesData = [];

  // bool isloading = false;

  // List<UserRankList?> userRank = [];
  // String? setTime, setDate;

  // String? hour, minute, time;

  // String? dateTime;

  // DateTime selectedDate = DateTime.now();

  // TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  // TextEditingController dateController = TextEditingController();
  // TextEditingController timeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GetBuilder<HomeController>(
      builder: (logic) {
        if (logic.getRoleResponse != null &&
            logic.getAllTargetResponse != null) {
          return Stack(
            children: [
              Scaffold(
                  backgroundColor: AppColors.scaffoldBG,
                  body: SingleChildScrollView(
                    child: SafeArea(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Text(
                            'GRN Innovation',
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        buildTreeVidget(size, context, logic),
                        buildTargetWIdget(size),
                      ],
                    )),
                  )),
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  SizedBox buildTreeVidget(
      Size size, BuildContext context, HomeController logic) {
    return SizedBox(
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
                  InkWell(
                    child: PolyData(
                      h: 104.w,
                      w: 106.w,
                      img: 'assets/images/1.png',
                      title: 'Industrial',
                      num: logic.getRoleResponse?.industrial.toString(),
                      // listDATA["industrial"].toString(),
                      polyColor: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomeRite(),
                              type: PageTransitionType.leftToRight,
                              duration: const Duration(milliseconds: 100)));
                    },
                  ),
                  PolyData(
                    h: 104.w,
                    w: 106.w,
                    img: 'assets/images/1.png',
                    title: 'Government',
                    num: logic.getRoleResponse?.government.toString(),
                    // listDATA["government"].toString(),
                    polyColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomeRite(),
                              type: PageTransitionType.leftToRight,
                              duration: const Duration(milliseconds: 100)));
                    },
                  ),
                  PolyData(
                    h: 104.w,
                    w: 106.w,
                    img: 'assets/images/1.png',
                    title: 'Domestic',
                    num: logic.getRoleResponse?.domestic.toString(),
                    // listDATA["domestic"].toString(),
                    polyColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomeRite(),
                              type: PageTransitionType.leftToRight,
                              duration: const Duration(milliseconds: 100)));
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 75.h,
              left: 9.w,
              child: PolyData(
                h: 122.h,
                w: 133.w,
                img: 'assets/images/2.png',
                title: 'Distributors',
                num: logic.getRoleResponse?.distributers.toString(),
                //listDATA["domestic"].toString(),
                polyColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: HomeRite(),
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 100)));
                },
              ),
            ),
            Positioned(
              top: 75.h,
              left: 105.w,
              child: PolyData(
                h: 122.h,
                w: 133.w,
                img: 'assets/images/2.png',
                title: 'Dealers',
                num: logic.getRoleResponse?.dealers.toString(),
                // listDATA["dealers"].toString(),
                polyColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: HomeRite(),
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 100)));
                },
              ),
            ),
            Positioned(
              top: 75.h,
              left: 205.w,
              child: PolyData(
                h: 122.h,
                w: 133.w,
                img: 'assets/images/2.png',
                title: 'Technician',
                num: logic.getRoleResponse?.technician.toString(),
                // listDATA["Technician"].toString(),
                polyColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: HomeRite(),
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 100)));
                },
              ),
            ),
            Positioned(
                top: 159.h,
                left: 40.w,
                child: PolyData(
                  h: 112.h,
                  w: 139.w,
                  img: 'assets/images/3.png',
                  title: 'Investers',
                  num: logic.getRoleResponse?.investor.toString(),
                  //listDATA["Investor"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 159.h,
                left: 160.w,
                child: PolyData(
                  h: 112.h,
                  w: 139.w,
                  img: 'assets/images/99.png',
                  title: 'B.Partner',
                  num: logic.getRoleResponse?.b.toString(),
                  //listDATA["B.partner"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 190.h,
                left: 88.w,
                child: PolyData(
                  h: 140.h,
                  w: 166.w,
                  img: 'assets/images/4.png',
                  title: '      GRN \n Innovation',
                  num: logic.getRoleResponse?.grnInnovation.toString(),

                  // rolesData![0][0]["GRN Innovation"]
                  //     .toString(),
                  polyColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
              top: 290.h,
              // right :0.09.w,
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Product',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 0.7.w,
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
                      width: 0.7.w,
                    ),
                    Text('Service',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold)),

                    //    SvgPicture.asset('assets/images/background.png',width: 89.w,height: 80.h,),
                    SizedBox(
                      width: 0.7.w,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 310.h,
                right: 80.w,
                child: PolyData(
                  h: 150.h,
                  w: 180.w,
                  img: 'assets/images/5.png',
                  title: '       Rite \n Foundation',
                  num: logic.getRoleResponse?.riteFoundation.toString(),
                  //  rolesData![0][0]["Rite Foundation"]
                  //     .toString(),
                  polyColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 355.h,
                right: 120.w,
                child: PolyData(
                  h: 160.h,
                  w: 230.w,
                  img: 'assets/images/8.png',
                  title: 'Advisor',
                  num: logic.getRoleResponse?.advisor.toString(),
                  //listData["advisor"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 355.h,
                left: 120.w,
                child: PolyData(
                  h: 160.h,
                  w: 230.w,
                  img: 'assets/images/11.png',
                  title: 'Admin',
                  num: logic.getRoleResponse?.admin.toString(),
                  // listData["admin"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 420.h,
                right: 180.w,
                child: PolyData(
                  h: 170.h,
                  w: 178.w,
                  img: 'assets/images/6.png',
                  title: 'Institution',
                  num: logic.getRoleResponse?.institution.toString(),
                  //listData["institution"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 420.h,
                left: 84.w,
                child: PolyData(
                  h: 170.h,
                  w: 178.w,
                  img: 'assets/images/6.png',
                  title: 'Trust',
                  num: logic.getRoleResponse?.trust.toString(),
                  // listData["trust"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 420.h,
                left: 184.w,
                child: PolyData(
                  h: 170.h,
                  w: 178.w,
                  img: 'assets/images/6.png',
                  title: 'Association',
                  num: logic.getRoleResponse?.association.toString(),
                  // listData["association"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 520.h,
                left: 220.w,
                child: PolyData(
                  h: 150.h,
                  w: 130.w,
                  img: 'assets/images/7.png',
                  title: 'Job Seekers',
                  num: logic.getRoleResponse?.jobSeakers.toString(),
                  //listData["students"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 520.h,
                left: 105.w,
                child: PolyData(
                  h: 150.h,
                  w: 130.w,
                  img: 'assets/images/7.png',
                  title: 'Public',
                  num: logic.getRoleResponse?.public.toString(),
                  //listData["public"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
            Positioned(
                top: 520.h,
                right: 210.w,
                child: PolyData(
                  h: 150.h,
                  w: 150.w,
                  img: 'assets/images/7.png',
                  title: 'Students',
                  num: logic.getRoleResponse?.students.toString(),
                  // listData["job seakers"].toString(),
                  polyColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomeRite(),
                            type: PageTransitionType.leftToRight,
                            duration: const Duration(milliseconds: 100)));
                  },
                )),
          ],
        ),
      ),
    );
  }

  Container buildTargetWIdget(Size size) {
    return Container(
      padding: EdgeInsets.all(6.r),
      //  height: size.height * 0.6,
      width: size.width,
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 200,
              childAspectRatio: 4),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xff939F9A),
                  border: Border.all(color: Color(0xffB78ACF), width: 2),
                  gradient: LinearGradient(colors: [
                    Color(0xff4A4A4A).withOpacity(0.4),
                    Color(0xff696868),
                    Color(0xff4A4A4A).withOpacity(0.4),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "1",
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.sp),
                        ),
                        InkWell(
                          child: Icon(Icons.calendar_month_rounded,
                              color: Colors.white, size: 14.sp),
                          onTap: () {
                            _showMaterialDialog(context);
                          },
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Target',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 2.sp,
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(''),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                        Text(
                          '320',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 12.sp,
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 2.sp,
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.grey,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                        Text(
                          '320',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 12.sp,
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 2.sp,
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.grey,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                        Text(
                          '320',
                          style: TextStyle(
                              color: Color(0xff939F9A), fontSize: 10.sp),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.brown,
                          size: 12.sp,
                        ),
                        SizedBox(
                          width: 2.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                  ],
                ),
              )),
    );
  }
}

void _showMaterialDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Calender_custom();
      });
}

dismissDialog(BuildContext context) {
  Navigator.pop(context);
}

void showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: AppColors.scaffoldBG,
          ),
          child: Column(
            children: [],
          ),
        );
      });
}
