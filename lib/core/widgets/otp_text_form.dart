// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/styles/colors.dart';

class otp_text_form extends StatelessWidget {
  const otp_text_form({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      height: 60,
      width: 60,
      child: TextFormField(
        onSaved: (pin1) {},
        controller: controller,
        keyboardType: TextInputType.number,
        maxLines: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        cursorColor: defaultColor1(),
        style: TextStyle(color: defaultColor5(), fontSize: 22.sp),
        decoration: InputDecoration(
          focusColor: defaultColor1(),
          fillColor:defaultColor3(),
          filled: true,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
