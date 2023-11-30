// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/orders/presentation/views/widgets/chat_button.dart';

class lower_details extends StatelessWidget {
  const lower_details({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 142,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cate: Tech',
                style: style(
                  color: defaultColor5(),
                  size: 15.sp,
                ),
              ),
              Text(
                'Price: 250EGP',
                style: style(
                  color: defaultColor5(),
                  size: 15.sp,
                ),
              ),
            ],
          ),
          const Spacer(),
          const chat_button(),
          10.width,

        ],
      ),
    );
  }
}
