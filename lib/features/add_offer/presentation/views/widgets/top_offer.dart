// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/home/presentations/views/widgets/home_top_logo.dart';
import 'package:hekta/features/home/presentations/views/widgets/rating.dart';

class top_offer extends StatelessWidget {
  const top_offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(start: 17, top: 27),
      child: Row(
        children: [
          home_top_logo(),
          25.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Edugame',
                    style: styleBold(color: defaultColor5(), size: 20.sp),
                  ),
                  10.width,
                  const Image(
                    image: AssetImage(
                      Assets.imagesShippingTruck,
                    ),
                  )
                ],
              ),
              4.height,
              Text(
                'ID:290-3',
                style: styleBold(color: defaultColor5(), size: 12.sp),
              ),
              10.height,
              Row(
                children: [
                  Text(
                    '4.3',
                    style: styleBold(color: defaultColor2(), size: 14.sp),
                  ),
                  3.width,
                  const rating(),
                  5.width,
                  Text(
                    '126 reviews',
                    style: styleBold(color: defaultColor5().withOpacity(0.5), size: 12.sp),
                  )
                ],
              ),
              10.height,
              Stack(
                children: [
                  Container(
                    width: 170,
                    height: 37,
                    padding: EdgeInsets.only(right: 10.w),
                    decoration: shape(color: defaultColor2().withOpacity(0.5)),
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          '30000 ',
                          style: styleBold(color: defaultColor3(), size: 15.sp),
                        ),
                        Image(
                          image: const AssetImage(Assets.imagesProfile),
                          width: 15,
                          height: 15,
                          color: defaultColor3(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 93,
                    height: 37.41,
                    alignment: AlignmentDirectional.center,
                    decoration: shape(color: defaultColor2()),
                    child: Text(
                      'Checked',
                      style: styleBold(color: defaultColor3(), size: 15.sp),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
