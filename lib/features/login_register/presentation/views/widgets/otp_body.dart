// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/widgets/otp_text_form.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/otp_button.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';

class otp_body extends StatelessWidget {
  var pin1 = TextEditingController();
  var pin2 = TextEditingController();
  var pin3 = TextEditingController();
  var pin4 = TextEditingController();
  var pin5 = TextEditingController();
  var form_key = GlobalKey<FormState>();
  otp_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: form_key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.height,
            const top_log_reg_design(
              text1: 'Enter The OTP',
              text2: '',
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 70.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                          otp_text_form(
                            controller: pin5,
                          ),
                        ],
                      ),
                      otp_button(
                        form: form_key,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
