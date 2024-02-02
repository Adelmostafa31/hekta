// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/usable_container.dart';
import 'package:hekta/features/login_register/presentation/views/choose_package.dart';

class otp_button extends StatelessWidget {
  const otp_button({super.key, required this.form});
  final GlobalKey<FormState> form;
  @override
  Widget build(BuildContext context) {
    return container(
      border: 25,
      color: defaultColor2(),
      height: 50.h,
      width: 115.w,
      marginBottom: 0,
      marginLeft: 0,
      marginRight: 0,
      marginTop: 85.h,
      child: TextButton(
        onPressed: () {
          navigator(context: context, widget: const choose_package());
        },
        child: Text(
          'Enter',
          style: TextStyle(
            fontSize: 22.sp,
            color: defaultColor3(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
