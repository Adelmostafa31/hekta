// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';

class password_bottom extends StatelessWidget {
  const password_bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // navigator(context: context, widget: const password());
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        width: MediaQuery.sizeOf(context).width - 30.r,
        height: 55.h,
        decoration: decoration,
        child: Text(
          'Sign Up',
          style: style1,
        ),
      ),
    );
  }
}
