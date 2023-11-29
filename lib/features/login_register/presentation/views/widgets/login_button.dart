// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class login_button extends StatelessWidget {
  const login_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 150.w,
        height: 50.h,
        decoration: decoration(color: defaultColor2()),
        child: Text(
          'Login',
          style: styleBold(color: defaultColor3(), size: 22.w),
        ),
      ),
    );
  }
}