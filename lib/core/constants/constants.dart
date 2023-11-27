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

TextStyle style({required Color color, required double size}) => TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
      fontFamily: 'com',
    );
TextStyle styleBold({required Color color, required double size}) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: 'com',
    );

BoxDecoration decoration({required Color color}) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25.r),
    );
BoxDecoration decoration_form_feild = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  border: Border(
    bottom: BorderSide(color: defaultColor2()),
    top: BorderSide(color: defaultColor2()),
    left: BorderSide(color: defaultColor2()),
    right: BorderSide(color: defaultColor2()),
  ),
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
