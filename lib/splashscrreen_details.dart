import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';

class Splashscreen_details extends StatelessWidget {
  const Splashscreen_details({Key? key}) : super(key: key);

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
                        title: 'Technician',
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

//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:freeze_app/app_color.dart';
//
// class Splashscreen_details extends StatelessWidget {
//   const Splashscreen_details({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: AppColors.scaffoldBG,
//       body: SafeArea(
//         child:       SizedBox(
//           height: size.height,
//           width:size.width,
//           child: Padding(
//             padding:  EdgeInsets.only(left: 10.w,right: 10.w),
//             child: Stack(
//
//               children:
//
//               [
//                 SizedBox(
//
//                   height: 100.w,
//                   width: 336.w,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//
//                       poly_images1(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Industrial', polyColor: Colors.white,),
//                       poly_images1(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Government', polyColor: Colors.white,),
//                       poly_images1(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Domestic', polyColor: Colors.white,),
//
//
//                     ],
//                   ),
//                 ),
//
//                 Positioned(
//                   top: 75.h,
//                   left: 5.w,
//
//                   child:
//
//                   poly_images1(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Distributors', polyColor: Colors.white),),
//
//
//
//                 Positioned(
//                   top: 75.h,
//                   left:105.w,
//                   child:
//
//
//                   poly_images1(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Dealers',  polyColor: Colors.white),),
//
//                 Positioned(
//                   top: 75.h,
//                   left:205.w,
//                   child:
//
//
//                   poly_images1(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Technician',  polyColor: Colors.white),),
//
//
//
//                 Positioned(
//                     top: 159.h,
//                     left:45.w,
//                     child:
//
//
//                     poly_images1(h: 112.h, w: 139.w, img: 'assets/images/3.png', title: 'Technician', polyColor: Colors.white)
//
//                 ),
//                 Positioned(
//                     top: 159.h,
//                     left:160.w,
//                     child:
//
//
//                     poly_images1(h: 112.h, w: 139.w, img: 'assets/images/99.png', title: 'B.Partner',polyColor: Colors.white)
//
//                 ),
//                 Positioned(
//                     top: 190.h,
//                     left:88.w,
//                     child:
//
//
//                     poly_images1(h: 140.h, w: 166.w, img: 'assets/images/4.png', title: '      GRN \n Innovation', polyColor: Colors.black)
//
//                 ),
//
//                 Positioned(
//                   top: 290.h,
//                   right :0.1.w,
//                   child:SizedBox(
//                     width: size.width,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//
//                       children: [
//                         SizedBox(
//                           width: 1.w,
//                         ),
//                         Text('Product',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold)),
//                         SizedBox(
//                           width: 1.w,
//                         ),
//                         Container(
//                           width: 80.w,height: 60.h,
//                           decoration : BoxDecoration(
//                               image:  DecorationImage(
//                                 fit: BoxFit.fill,
//                                 image: AssetImage('assets/images/background.png'),
//                               )
//                           ),
//                           child: Image.asset('assets/images/Rectangle.png'),
//                         ),
//                         SizedBox(
//                           width: 1.w,
//                         ),
//                         Text('Service',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold)),
//
//                         //    SvgPicture.asset('assets/images/background.png',width: 89.w,height: 80.h,),
//
//                       ],
//                     ),
//                   ),
//
//                 ),
//                 Positioned(
//                     top: 310.h,
//                     right:80  .w,
//                     child: poly_images1(h: 150.h, w: 180.w, img:'assets/images/5.png' , title: '       Rite \n Foundation', polyColor: Colors.black,)
//
//
//                 ),
//                 Positioned(
//                     top: 355.h,
//                     right:120.w,
//                     child: poly_images1(h: 160.h, w: 230.w, img:'assets/images/8.png' , title: 'Advisor', polyColor: Colors.white,)
//
//
//
//
//                 ),
//                 Positioned(
//                     top: 355.h,
//                     left:120.w,
//                     child: poly_images1(h: 160.h, w: 230.w, img:'assets/images/11.png' , title: 'Admin', polyColor: Colors.white,)
//
//
//
//                 ),
//                 Positioned(
//                     top: 420.h,
//                     right:180.w,
//                     child: poly_images1(h: 170.h, w: 178.w, img:'assets/images/6.png' , title: 'Institution', polyColor: Colors.white,)
//
//
//                 ),
//                 Positioned(
//                     top: 420.h,
//                     left:84.w,
//                     child: poly_images1(h: 170.h, w: 178.w, img:'assets/images/6.png' , title: 'Trust',  polyColor: Colors.white,)
//
//
//
//
//                 ),
//
//
//                 Positioned(
//                     top: 420.h,
//                     left:184.w,
//                     child: poly_images1(h:  170.h, w: 178.w, img:'assets/images/6.png' , title: 'Association',  polyColor: Colors.white,)
//
//
//
//                 ),
//
//                 Positioned(
//                     top: 520.h,
//                     left:220.w,
//                     child: poly_images1(h: 150.h, w: 130.w, img:'assets/images/7.png' , title: 'Job Seekers',  polyColor: Colors.white,)
//
//
//
//                 ),
//
//                 Positioned(
//                     top: 520.h,
//                     left:105.w,
//                     child: poly_images1(h: 150.h, w: 130.w, img:'assets/images/7.png' , title: 'Public', polyColor: Colors.white,)
//
//
//
//                 ),
//                 Positioned(
//                     top: 520.h,
//                     right: 210.w,
//                     child: poly_images1(h:  150.h, w: 150.w, img:'assets/images/7.png' , title: 'Students',  polyColor: Colors.white,)
//
//
//
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class poly_images1 extends StatelessWidget {
  final double h;
  final double w;
  final String img;
  final String title;
  // final String num;
  final Color polyColor;
  const poly_images1(
      {Key? key,
      required this.h,
      required this.w,
      required this.img,
      required this.title,
      //  required this.num,
      required this.polyColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(img),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: polyColor, fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
          //  SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}
