// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';

class bottom_signIn extends StatelessWidget {
  const bottom_signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: AlignmentDirectional.center,
        width: MediaQuery.sizeOf(context).width - 30.r,
        height: 55.h,
        decoration: decoration,
        child: Text(
          'Continue to Sign In',
          style: style1,
        ),
      ),
    );
  }
}
