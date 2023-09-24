// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/password_bottom.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/text_terms.dart';

class password extends StatelessWidget {
  const password({super.key});

  @override
  Widget build(BuildContext context) {
    var password = TextEditingController();
    var confirmPassword = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Your Password',
                style: style2,
              ),
              40.height,
              text_form(
                readOnly: true,
                width: MediaQuery.sizeOf(context).width - 30.r,
                hint: 'Enter Your Password',
                color: defaultColor4(),
                obscure: true,
                hintFont: 18.sp,
                type: TextInputType.number,
                controller: password,
              ),
              20.height,
              text_form(
                readOnly: true,
                width: MediaQuery.sizeOf(context).width - 30.r,
                hint: 'Re-Enter Your Password',
                color: defaultColor4(),
                obscure: true,
                hintFont: 18.sp,
                type: TextInputType.number,
                controller: confirmPassword,
              ),
              const Spacer(),
              const password_bottom(),
              10.height,
              const text_terms(),
            ],
          ),
        ),
      ),
    );
  }
}
