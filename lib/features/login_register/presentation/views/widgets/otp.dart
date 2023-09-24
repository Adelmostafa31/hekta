// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/widgets/otp_text_form.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/otp_bottom.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/text_terms.dart';

class otp extends StatelessWidget {
  const otp({super.key});

  @override
  Widget build(BuildContext context) {
    var pin1 = TextEditingController();
    var pin2 = TextEditingController();
    var pin3 = TextEditingController();
    var pin4 = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter OTP',
                style: style2,
              ),
              Text(
                'Please enter the otp sent to\n 01272848503',
                style: style3,
              ),
              40.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  otp_text_form(
                    controller: pin1,
                  ),
                  otp_text_form(
                    controller: pin2,
                  ),
                  otp_text_form(
                    controller: pin3,
                  ),
                  otp_text_form(
                    controller: pin4,
                  ),
                ],
              ),
              const Spacer(),
              const otp_bottom(),
              10.height,
              const text_terms(),
            ],
          ),
        ),
      ),
    );
  }
}
