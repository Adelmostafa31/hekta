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
      fontFamily: 'com',
    );
TextStyle styleBold({required Color color, required double size}) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: 'com',
    );
TextStyle navBarStyle() => TextStyle(
      color: Colors.white,
      fontSize: 17.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'com',
    );

ShapeDecoration shape({required Color color}) => ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.37),
      ),
    );
ShapeDecoration shape2 = ShapeDecoration(
  color: const Color(0xFFD9D9D9),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
);
BoxDecoration decoration({required Color color}) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25.r),
    );
BoxDecoration decoration_form_feild(
        {Color color = const Color.fromARGB(255, 255, 128, 0)}) =>
    BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border(
        bottom: BorderSide(color: color),
        top: BorderSide(color: color),
        left: BorderSide(color: color),
        right: BorderSide(color: color),
      ),
    );
BoxDecoration orders_decoration = BoxDecoration(
  borderRadius: const BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
  border: Border(
    bottom: BorderSide(color: defaultColor2()),
    top: BorderSide(color: defaultColor2()),
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

Duration mainTransitionDuration = const Duration(milliseconds: 250);

EdgeInsetsDirectional paddingBuilder({
  double start = 0.0,
  double end = 0.0,
  double top = 0.0,
  double bottom = 0.0,
}) {
  return EdgeInsetsDirectional.only(
      start: start, end: end, top: top, bottom: bottom);
}

Widget backButton({required BuildContext context}) => IconButton(
      padding: EdgeInsets.only(left: 10.w),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 37.h,
        color: defaultColor1(),
      ),
    );
