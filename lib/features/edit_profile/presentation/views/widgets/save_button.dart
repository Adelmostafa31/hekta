import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class save_button extends StatelessWidget {
  const save_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            alignment: AlignmentDirectional.center,
            width: 100.w,
            height: 50.h,
            decoration: decoration(color: defaultColor2()),
            child: Text(
              'save',
              style: styleBold(
                color: defaultColor3(),
                size: 20.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
