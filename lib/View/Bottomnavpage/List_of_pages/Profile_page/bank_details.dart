import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/utils/apputils.dart';
import 'package:freeze_app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Bankdetails extends StatefulWidget {
  const Bankdetails({Key? key}) : super(key: key);

  @override
  State<Bankdetails> createState() => _BankdetailsState();
}

class _BankdetailsState extends State<Bankdetails> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    AppUtils.showToast("Payment Success");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void openCheckout() async {
    var options = {
      'key': Constants.razorPayKey,
      'amount': 100,
      'name': 'Freezee',
      //'description': 'Fine T-Shirt',
      //'prefill': {'contact': '9961410407', 'email': 'md@markhealth.com'},
      'timeout': 300,
      //"order_id": "1"
      // 'external': {
      //   'wallets': ['paytm']
      // }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              color: Color(0xff65019A),
              height: 53.h,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Bank Details',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 350.h,
              width: 341.w,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' Name',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Eg : tamilvanan',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' AC/no',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('64345444542'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' IFSC',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('IDFEC6216641641'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' PAN no',
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                      Container(
                        height: 30.h,
                        width: 175.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.9),
                                  blurRadius: 8,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.2),
                                  blurRadius: 5,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(21, 21, 21, 0.5),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color.fromRGBO(62, 62, 62, 0.3),
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(-1, -1)),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('IDFEC6216641641'),
                              labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xffF2F3F2).withOpacity(0.2)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    child: Container(
                        height: 44.h,
                        width: 167.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.w),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 3.w,
                                  offset: Offset(1, 1)),
                              BoxShadow(
                                  color: Color(0xff28003),
                                  blurRadius: 1.w,
                                  offset: Offset(-1, -1)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 1.w,
                                  offset: Offset(2, -2)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 1.w,
                                  offset: Offset(-2, 2)),
                              BoxShadow(
                                  color: Color(0xffA202F6),
                                  blurRadius: 1.w,
                                  //blurStyle: BlurStyle.inner,
                                  offset: Offset(-3, -3)),
                              BoxShadow(
                                  color: Color(0xff28003E),
                                  blurRadius: 1.w,
                                  blurStyle: BlurStyle.inner,
                                  offset: Offset(2, 2)),
                            ],
                            color: Color(0xff65019A)),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        )),
                    onTap: () {
                      openCheckout();
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => HomeTabScreen()));
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // Container(
      //   height: 325,
      //   width: 341,
      //   margin: EdgeInsets.only(
      //     top: 45,
      //     left: 24,
      //     right: 25,
      //   ),
      //   decoration: BoxDecoration(
      //     color: Color(0xFF393838),
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: [
      //       BoxShadow(
      //           color: Color.fromARGB(255, 0, 0, 0),
      //           blurRadius: 7.w,
      //           offset: Offset(1, 1)),
      //       BoxShadow(
      //           color: Color(0xff28003),
      //           blurRadius: 2.w,
      //           offset: Offset(-1, -1)),
      //       BoxShadow(
      //           color: Color.fromARGB(0, 40, 0, 62),
      //           blurRadius: 2.w,
      //           offset: Offset(3, -3)),
      //       BoxShadow(
      //           color: Color.fromARGB(0, 40, 0, 62),
      //           blurRadius: 2.w,
      //           offset: Offset(-3, 3)),
      //       BoxShadow(
      //           color: Color.fromARGB(255, 1, 1, 1),
      //           blurRadius: 2.w,
      //           //blurStyle: BlurStyle.inner,
      //           offset: Offset(-3, -3)),
      //       BoxShadow(
      //           color: Color.fromARGB(0, 40, 0, 62),
      //           blurRadius: 2.w,
      //           //  blurStyle: BlurStyle.inner,
      //           offset: Offset(3, 3)),
      //     ],
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         height: 30.h,
      //         width: 282.w,
      //         margin: EdgeInsets.only(top: 23),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(top: 9),
      //               child: Text('Name',
      //                   style: GoogleFonts.montserrat(
      //                       color: Colors.white,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal)),
      //             ),
      //             Container(
      //               height: 30.h,
      //               width: 170.w,
      //               //margin: EdgeInsets.only(top: 32),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10.w),
      //                 color: Color(0xFF292929),
      //               ),
      //               child: TextFormField(
      //                 decoration: InputDecoration(
      //                   contentPadding:
      //                       EdgeInsets.only(left: 20.0, bottom: 8.0),
      //                   border: InputBorder.none,
      //                   hintText: "Eg (Ganesh)",
      //                   hintStyle: GoogleFonts.montserrat(
      //                       color: Colors.grey,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 30.h,
      //         width: 282.w,
      //         margin: EdgeInsets.only(top: 23),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(top: 9),
      //               child: Text('A/c No',
      //                   style: GoogleFonts.montserrat(
      //                       color: Colors.white,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal)),
      //             ),
      //             Container(
      //               height: 30.h,
      //               width: 170.w,
      //               //margin: EdgeInsets.only(top: 32),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10.w),
      //                   color: Color(0xFF292929)),
      //               child: TextFormField(
      //                 decoration: InputDecoration(
      //                   contentPadding:
      //                       EdgeInsets.only(left: 20.0, bottom: 8.0),
      //                   border: InputBorder.none,
      //                   hintText: "56498489489",
      //                   hintStyle: GoogleFonts.montserrat(
      //                       color: Colors.grey,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 30.h,
      //         width: 282.w,
      //         margin: EdgeInsets.only(top: 23),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(top: 9),
      //               child: Text('IFSC',
      //                   style: GoogleFonts.montserrat(
      //                       color: Colors.white,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal)),
      //             ),
      //             Container(
      //               height: 30.h,
      //               width: 170.w,
      //               margin: EdgeInsets.only(left: 15),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10.w),
      //                   color: Color(0xFF292929)),
      //               child: TextFormField(
      //                 decoration: InputDecoration(
      //                   contentPadding:
      //                       EdgeInsets.only(left: 20.0, bottom: 8.0),
      //                   border: InputBorder.none,
      //                   hintText: "IDFC54",
      //                   hintStyle: GoogleFonts.montserrat(
      //                       color: Colors.grey,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 30.h,
      //         width: 282.w,
      //         margin: EdgeInsets.only(top: 23),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(top: 9),
      //               child: Text('Pan No',
      //                   style: GoogleFonts.montserrat(
      //                       color: Colors.white,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal)),
      //             ),
      //             Container(
      //               height: 30.h,
      //               width: 170.w,
      //               //margin: EdgeInsets.only(top: 32),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10.w),
      //                   color: Color(0xFF292929)),
      //               child: TextFormField(
      //                 decoration: InputDecoration(
      //                   contentPadding:
      //                       EdgeInsets.only(left: 20.0, bottom: 8.0),
      //                   border: InputBorder.none,
      //                   hintText: "BAHYUIK015S",
      //                   hintStyle: GoogleFonts.montserrat(
      //                       color: Colors.grey,
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.normal),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20.h,
      //       ),
      //       Center(
      //         child: InkWell(
      //           child: Container(
      //               height: 39.h,
      //               width: 167.w,
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20.w),
      //                   color: Color(0xff65019A)),
      //               child: Center(
      //                 child: Text(
      //                   'Submit',
      //                   style: GoogleFonts.montserrat(
      //                       color: Colors.white, fontSize: 14.sp),
      //                 ),
      //               )),
      //           onTap: () {
      //             Navigator.push(
      //                 context, MaterialPageRoute(builder: (_) => BottomNav()));
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
