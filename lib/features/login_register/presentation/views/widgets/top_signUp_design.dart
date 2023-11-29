// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class top_signUp_design extends StatelessWidget {
  const top_signUp_design({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.only(left: 20.w),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 37.h,
                color: defaultColor1(),
              ),
            ),
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
          'Let\'s get you signup',
          style: styleBold(color: defaultColor5(), size: 29.sp),
        ),
        7.height,
        Text(
          'Signup now to start your online shop',
          style: styleBold(
            color: defaultColor5().withOpacity(0.5),
            size: 12.sp,
          ),
        ),
      ],
    );
  }
}
