// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/styles/colors.dart';

class text_terms extends StatelessWidget {
  const text_terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'By continuing you agree to our ',
          style: TextStyle(
            fontSize: 12.sp,
            color: defaultColor4(),
            fontFamily: 'com',
          ),
        ),
        Text(
          'terms & conditions',
          style: TextStyle(
            fontSize: 12.sp,
            color: defaultColor4(),
            fontFamily: 'com',
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
