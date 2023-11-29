// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';
import 'package:hekta/features/base_layout/presenation/view/layout.dart';

class member_form_feilds extends StatelessWidget {
  const member_form_feilds({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Column(
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: decoration_form_feild(),
            child: text_form(
              hint: 'Phone Number',
              obscure: false,
              type: TextInputType.phone,
              controller: phoneController,
              width: double.infinity,
              readOnly: true,
              color: defaultColor4().withOpacity(0.5),
            ),
          ),
          20.height,
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: decoration_form_feild(),
            child: text_form(
              hint: 'Password',
              obscure: true,
              type: TextInputType.emailAddress,
              controller: passwordController,
              width: double.infinity,
              readOnly: true,
              color: defaultColor4().withOpacity(0.5),
            ),
          ),
          80.height,
          InkWell(
            onTap: () {
              navigatorPushRemove(
                  context: context, widget: const layout());
            },
            child: Container(
              alignment: Alignment.center,
              height: 70.h,
              width: 150.w,
              decoration: decoration(color: defaultColor2()),
              child: Text(
                'Login',
                style: styleBold(color: defaultColor3(), size: 30.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
