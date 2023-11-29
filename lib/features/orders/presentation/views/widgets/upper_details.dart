import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class upper_details extends StatelessWidget {
  const upper_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No.098',
          style: styleBold(
            color: defaultColor5(),
            size: 22.sp,
          ),
        ),
        10.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ordered by: 01272848503',
              style: style(
                color: defaultColor5().withOpacity(0.5),
                size: 15.sp,
              ),
            ),
            Text(
              'Address: Alexandria',
              style: style(
                color: defaultColor5().withOpacity(0.5),
                size: 15.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
