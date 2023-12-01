// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/edit_profile/presentation/views/widgets/editPro_SignUp_form_field.dart';
import 'package:hekta/features/edit_profile/presentation/views/widgets/edit_profile_app_bar.dart';
import 'package:hekta/features/edit_profile/presentation/views/widgets/save_button.dart';
import 'package:hekta/features/home/presentations/views/widgets/home_top_logo.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/upload_video.dart';

class edit_profile_body extends StatelessWidget {
  const edit_profile_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const edit_profile_app_bar(),
              home_top_logo(),
              5.height,
              Text(
                "EduGame",
                style: styleBold(color: defaultColor5(), size: 19.w),
              ),
              10.height,
              const editPro_SignUp_form_field(),
              20.height,
              const upload_video(),
              20.height,
              const save_button(),
              20.height,
            ],
          ),
        ),
      ),
    );
  }
}
