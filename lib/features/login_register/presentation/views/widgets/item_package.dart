// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class itemPackage extends StatelessWidget {
  const itemPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Package 1',
              style: styleBold(color: defaultColor5(), size: 22.sp),
            ),
            Text(
              'Small business',
              style: styleBold(color: defaultColor5(), size: 18.sp),
            ),
            Text(
              '50 photo - Space',
              style: style(color: defaultColor5(), size: 16.sp),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Price : 40 EGP/',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: defaultColor2(),
                    ),
                  ),
                  TextSpan(
                    text: 'Month!',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: defaultColor5(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
