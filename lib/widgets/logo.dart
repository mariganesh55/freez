import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.h,
      width: 109.w,
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
      child: Center(
        child: Image.asset('assets/images/Rectangle.png'),
      ),
    );
  }
}
