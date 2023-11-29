// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/list_onBording_model.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class smooth_indecator extends StatelessWidget {
  smooth_indecator({
    Key? key,
    required this.innerPageController,
    required this.isInner,
    required this.outerPageController,
  }) : super(key: key);
  var outerPageController = PageController();
  var innerPageController = PageController();
  bool isInner;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: isInner ? innerPageController : outerPageController,
      count: onBoardingPageViewList.length,
      effect: ExpandingDotsEffect(
        dotColor: Colors.grey,
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: defaultColor2(),
        expansionFactor: 4,
        spacing: 5,
      ),
    );
  }
}
