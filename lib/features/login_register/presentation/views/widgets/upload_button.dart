// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class upload_button extends StatelessWidget {
  const upload_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: AlignmentDirectional.center,
        decoration: decoration(color: defaultColor2()),
        width: 80,
        height: 40,
        child: Text(
          'Upload',
          style: styleBold(
            color: defaultColor3(),
            size: 15.sp,
          ),
        ),
      ),
    );
  }
}