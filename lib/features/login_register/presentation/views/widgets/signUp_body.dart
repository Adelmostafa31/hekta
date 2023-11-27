// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/signUp_form_feilds.dart';

class signUp_body extends StatelessWidget {
  const signUp_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 53.h),
          child: const SingleChildScrollView(
            child: signUp_form_feilds(),
          ),
        ),
      ),
    );
  }
}
