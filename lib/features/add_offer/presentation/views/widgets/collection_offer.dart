// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class collection_offer extends StatelessWidget {
  const collection_offer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'KING OFFER',
          style: styleBold(color: defaultColor5(), size: 20.sp),
        ),
        15.height,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(Assets.imagesTshirt),
              height: 120,
            ),
            Image(
              image: AssetImage(Assets.imagesTshirt),
              height: 120,
            ),
            Image(
              image: AssetImage(Assets.imagesTshirt),
              height: 120,
            ),
          ],
        ),
        15.height,
        Row(
          children: [
            Text(
              'Price',
              style: styleBold(color: defaultColor5(), size: 18.sp),
            ),
            5.width,
            Text(
              '800EGP',
              style: style(
                color: defaultColor5(),
                size: 16.sp,
              ),
            ),
            5.width,
            Text(
              '{1900EGP}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: defaultColor5().withOpacity(0.7),
                fontSize: 16.sp,
              ),
            ),
            const Spacer(),
            Container(
              alignment: AlignmentDirectional.center,
              width: 80.w,
              height: 28.h,
              decoration: decoration_form_feild(
                  color: defaultColor5().withOpacity(0.7)),
              child: Text(
                '5352👍',
                style: style(
                  color: defaultColor5(),
                  size: 16.sp,
                ),
              ),
            ),
            25.width,
            IconButton(
              onPressed: () {},
              padding: EdgeInsetsDirectional.zero,
              icon: Image(
                image: const AssetImage(
                  Assets.imagesEdit,
                ),
                width: 30.w,
                height: 30.h,
              ),
            )
          ],
        ),
      ],
    );
  }
}
