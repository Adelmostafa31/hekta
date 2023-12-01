// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class edit_profile_app_bar extends StatelessWidget {
  const edit_profile_app_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(
        start: 17,
        end: 17,
      ),
      child: Row(
        children: [
          backButton(context: context),
          const Image(
            image: AssetImage(Assets.imagesLogo2),
            height: 55,
            width: 108,
          ),
          const Spacer(),
          Column(
            children: [
              const Image(image: AssetImage(Assets.imagesProfile)),
              Text(
                'Edit profile',
                style: styleBold(color: defaultColor5(), size: 19.sp),
              )
            ],
          )
        ],
      ),
    );
  }
}
