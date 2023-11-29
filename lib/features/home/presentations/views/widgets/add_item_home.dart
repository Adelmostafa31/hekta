// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class add_item_home extends StatelessWidget {
  const add_item_home({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: (){},
            child: Container(
              width: 105,
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: shape(color: defaultColor2()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Add item',
                    style: styleBold(color: defaultColor3(), size: 13.sp),
                  ),
                  Icon(
                    Icons.add,
                    size: 20,
                    color: defaultColor3(),
                  )
                ],
              ),
            ),
          );
  }
}