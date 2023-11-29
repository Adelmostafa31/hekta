// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/home/presentations/views/widgets/edit_ticket_buttons.dart';
import 'package:hekta/features/home/presentations/views/widgets/item_details.dart';

class main_item_home extends StatelessWidget {
  const main_item_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 25.h),
      height: 120,
      decoration:
          decoration_form_feild(color: defaultColor5().withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage(Assets.imagesTshirt),
          ),
          30.width,
          const item_details(),
          const edit_ticket_buttons()
        ],
      ),
    );
  }
}
