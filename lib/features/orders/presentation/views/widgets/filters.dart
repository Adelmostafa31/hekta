// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/animated_drop_down_list.dart';

class filters extends StatelessWidget {
  const filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 140,
          height: 40,
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.only(left: 3.w),
          child: AnimatedDropDownFormField(
            actionWidget: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: defaultColor5(),
              size: 30,
            ),
            buttonPadding: const EdgeInsets.all(5),
            listBackgroundDecoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            selectedItemIcon:
                Icon(Icons.done, color: defaultColor5(), size: 25),
            defaultTextStyle: styleBold(color: defaultColor5(), size: 20.sp),
            buttonDecoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            defaultText: const Text('City Filter'),
            items: const [
              Text('Alexadria'),
              Text('Cairo'),
              Text('Matrouh'),
              Text('Tanta'),
              Text('Mansoura'),
            ],
          ),
        ),
        Container(
          width: 140,
          height: 40,
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.only(left: 3.w),
          child: AnimatedDropDownFormField(
            actionWidget: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: defaultColor5(),
              size: 30,
            ),
            buttonPadding: const EdgeInsets.all(5),
            listBackgroundDecoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            selectedItemIcon: Icon(
              Icons.done,
              color: defaultColor5(),
              size: 25,
            ),
            defaultTextStyle: styleBold(
              color: defaultColor5(),
              size: 20.sp,
            ),
            buttonDecoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            defaultText: const Text('Cate Filter'),
            items: const [
              Text('Clothes'),
              Text('Electronic'),
              Text('Clean'),
            ],
          ),
        ),
      ],
    );
  }
}
