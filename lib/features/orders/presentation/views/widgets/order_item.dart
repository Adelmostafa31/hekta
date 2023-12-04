// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/orders/presentation/views/widgets/lower_details.dart';
import 'package:hekta/features/orders/presentation/views/widgets/text.dart';
import 'package:hekta/features/orders/presentation/views/widgets/upper_details.dart';

class order_item extends StatelessWidget {
  const order_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 25.h),
      height: 140,
      decoration:
          decoration_form_feild(color: defaultColor5().withOpacity(0.3)),
      child: Row(
        children: [
          const Image(
            image: AssetImage(Assets.imagesTshirt),
            width: 120,
            height: 140,
            fit: BoxFit.cover,
          ),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const upper_details(),
              5.height,
              const text(),
              10.height,
              const lower_details()
            ],
          )
        ],
      ),
    );
  }
}
