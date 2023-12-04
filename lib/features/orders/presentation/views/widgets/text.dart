// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class text extends StatelessWidget {
  const text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 30,
      alignment: AlignmentDirectional.center,
      decoration: decoration_form_feild(
        color: defaultColor5().withOpacity(0.5),
      ),
      child: Text(
        'I want to buy this dell screen',
        style: style(
          color: defaultColor5().withOpacity(0.5),
          size: 15.sp,
        ),
      ),
    );
  }
}
