// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class tab_bar_indicator extends StatelessWidget {
  const tab_bar_indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabs: const [
        Tab(
          text: 'Member',
        ),
        Tab(
          text: 'Shop',
        ),
      ],
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: styleBold(color: defaultColor3(), size: 22.sp),
      indicator: RectangularIndicator(
        color: defaultColor2(),
        bottomLeftRadius: 12,
        bottomRightRadius: 12,
        topLeftRadius: 12,
        topRightRadius: 12,
      ),
      dividerColor: defaultColor3(),
      indicatorWeight: 3,
      // dividerHeight: 1,
      padding: EdgeInsets.symmetric(horizontal: 50.w),
    );
  }
}
