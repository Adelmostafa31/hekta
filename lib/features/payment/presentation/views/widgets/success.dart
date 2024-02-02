// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class success extends StatelessWidget {
  const success({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage('assets/images/sucess sign.png'),
          width: 250.w,
          height: 250.h,
        ),
        Text('Success!', style: styleBold(color: defaultColor5(), size: 30.sp)),
        10.height,
        Text('Great purchase.Thank you for your purchase',
            textAlign: TextAlign.center,
            style: style(color: defaultColor5(), size: 16.sp)),
        50.height,
        InkWell(
          onTap: () {},
          child: Container(
            alignment: AlignmentDirectional.center,
            height: 50.h,
            width: 125.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: defaultColor2()),
            child: Text(
              'Done',
              style: style(color: defaultColor3(), size: 20.sp),
            ),
          ),
        ),
      ],
    );
  }
}
