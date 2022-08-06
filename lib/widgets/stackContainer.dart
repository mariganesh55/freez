import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const StackContainer({Key? key, required this.child, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF393838),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(44.w), topRight: Radius.circular(44.w)),
          boxShadow: [
            BoxShadow(
                color: Color(0xff565555),
                blurRadius: 11.w,
                offset: Offset(1, 1)),
            BoxShadow(
              color: Color(0xff161515),
              blurRadius: 6.w,
              offset: Offset(-1, -1),
            ),
            BoxShadow(
              color: Color(0xff161515),
              blurRadius: 6.w,
              offset: Offset(-3, 3),
            ),
            BoxShadow(
              color: Color(0xff161515),
              blurRadius: 6.w,
              offset: Offset(3, -3),
            ),
            BoxShadow(
                color: Color(0xff565555),
                blurRadius: 6.w,
                //  blurStyle: BlurStyle.inner,
                offset: Offset(-1, -1)),
            BoxShadow(
                color: Color(0xff161515),
                blurRadius: 6.w,
                //  blurStyle: BlurStyle.inner,
                offset: Offset(1, 1)),
          ]),
      child: child,
    );
  }
}
