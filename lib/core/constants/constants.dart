// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:page_transition/page_transition.dart';

var shadow = BoxShadow(
  blurRadius: 5,
  color: Colors.grey.withOpacity(0.5),
  offset: const Offset(0, 5),
);

TextStyle style1 = TextStyle(
  color: defaultColor3(),
  decoration: TextDecoration.none,
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
  fontFamily: 'com',
);
TextStyle style2 = TextStyle(
  fontSize: 25.sp,
  color: defaultColor5(),
  fontWeight: FontWeight.bold,
  fontFamily: 'com',
);
TextStyle style3 = TextStyle(
  fontSize: 14.sp,
  color: defaultColor4(),
  fontFamily: 'com',
);

BoxDecoration decoration = BoxDecoration(
  color: defaultColor1(),
  borderRadius: BorderRadius.circular(10.r),
);

Future<dynamic> navigator(
        {required BuildContext context, required Widget widget}) =>
    Navigator.push(
      context,
      PageTransition(
        child: widget,
        type: PageTransitionType.rightToLeft,
      ),
    );
Future<dynamic> navigatorPushRemove(
        {required BuildContext context, required Widget widget}) =>
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        child: widget,
        type: PageTransitionType.rightToLeft,
      ),
      (route) => false,
    );

extension IntExtension on int? {
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get height => SizedBox(
        height: this?.toDouble().h,
      );
  Widget get width => SizedBox(
        width: this?.toDouble().w,
      );
}

ToastFuture toast({
  required BuildContext context,
  String message = 'Please Fill All Fields',
}) =>
    showToast(
      message,
      context: context,
      animation: StyledToastAnimation.slideFromLeftFade,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.center,
      animDuration: const Duration(seconds: 1),
      duration: const Duration(seconds: 4),
      backgroundColor: Colors.red,
      borderRadius: BorderRadius.circular(15.r),
      textStyle: TextStyle(
        fontSize: 18.sp,
        color: Colors.white,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastLinearToSlowEaseIn,
    );
