// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class top_log_reg_design extends StatelessWidget {
  const top_log_reg_design({
    super.key, required this.text1, required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            backButton(context: context),
            30.width,
            Image(
              image: const AssetImage(
                'assets/images/logo2.png',
              ),
              width: 270.w,
              height: 164.h,
            ),
          ],
        ),
        20.height,
        Text(
          text1,
          style: styleBold(color: defaultColor5(), size: 29.sp),
        ),
        7.height,
        Text(
          text2,
          style: styleBold(
            color: defaultColor5().withOpacity(0.5),
            size: 12.sp,
          ),
        ),
      ],
    );
  }
}
