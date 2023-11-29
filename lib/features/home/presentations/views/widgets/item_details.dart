import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class item_details extends StatelessWidget {
  const item_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'T-Shirt Polo',
          style: styleBold(color: defaultColor5(), size: 22.sp),
        ),
        Text(
          'Price: 250EGP',
          style: style(color: defaultColor5().withOpacity(0.5), size: 16.sp),
        ),
        Text(
          'Cate: Clothes',
          style: style(color: defaultColor5().withOpacity(0.5), size: 16.sp),
        ),
        Text(
          '5352👍',
          style: style(color: defaultColor5().withOpacity(0.5), size: 16.sp),
        ),
      ],
    );
  }
}
