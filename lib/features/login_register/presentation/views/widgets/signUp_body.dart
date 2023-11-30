// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/signUp_button.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/editPro_SignUp_form_field.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/upload_video.dart';

class signUp_body extends StatelessWidget {
  const signUp_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 53.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const top_log_reg_design(
                  text1: 'Let\'s get you signup',
                  text2: 'Signup now to start your online shop',
                ),
                20.height,
                const editPro_SignUp_form_field(),
                20.height,
                const upload_video(),
                20.height,
                const signUp_button(),
                20.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
