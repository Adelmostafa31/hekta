// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/upload_button.dart';

class upload_video extends StatelessWidget {
  const upload_video({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        children: [
          Text(
            'Upload one minute video',
            style: styleBold(
              color: defaultColor5(),
              size: 20.sp,
            ),
          ),
          const Spacer(),
          const upload_button()
        ],
      ),
    );
  }
}