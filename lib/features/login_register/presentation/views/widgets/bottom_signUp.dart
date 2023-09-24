// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/otp.dart';

class bottom_signUp extends StatelessWidget {
  const bottom_signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigator(context: context, widget: const otp());
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        width: MediaQuery.sizeOf(context).width - 30.r,
        height: 55.h,
        decoration: decoration,
        child: Text(
          'Continue to Sign Up',
          style: style1,
        ),
      ),
    );
  }
}
