// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/otp.dart';

class signUp_button extends StatelessWidget {
  const signUp_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              navigator(context: context, widget: const otp());
            },
            child: Container(
              alignment: AlignmentDirectional.center,
              width: 150.w,
              height: 60.h,
              decoration: decoration(color: defaultColor2()),
              child: Text(
                'Signup',
                style: styleBold(
                  color: defaultColor3(),
                  size: 25.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
