// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/bottom_signUp.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/text_terms.dart';

class register_body extends StatelessWidget {
  const register_body({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up to Hekta',
                style: style2,
              ),
              Text(
                'Please enter your mobile number to register',
                style: style3,
              ),
              40.height,
              Row(
                children: [
                  text_form(
                    readOnly: false,
                    width: 65.w,
                    hint: '+20',
                    color: defaultColor4(),
                    obscure: false,
                    hintFont: 18.sp,
                    type: TextInputType.number,
                  ),
                  10.width,
                  text_form(
                    readOnly: true,
                    width: MediaQuery.sizeOf(context).width - (75.w + 30.r),
                    hint: '| Your Mobile Number',
                    color: defaultColor4(),
                    obscure: false,
                    hintFont: 18.sp,
                    type: TextInputType.number,
                    controller: phoneController,
                  ),
                ],
              ),
              const Spacer(),
              const bottom_signUp(),
              10.height,
              const text_terms(),
            ],
          ),
        ),
      ),
    );
  }
}
