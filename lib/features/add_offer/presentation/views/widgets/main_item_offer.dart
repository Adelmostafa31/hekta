// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/add_offer/presentation/views/widgets/collection_offer.dart';

class main_item_offer extends StatelessWidget {
  const main_item_offer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 25.h),
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      height: 235,
      decoration: decoration_form_feild(
        color: defaultColor5().withOpacity(0.3),
      ),
      child: const collection_offer(),
    );
  }
}
