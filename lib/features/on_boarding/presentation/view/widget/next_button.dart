// ignore_for_file: camel_case_types, unrelated_type_equality_checks, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/constants/list_onBording_model.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/login.dart';

// ignore: must_be_immutable
class next_button extends StatelessWidget {
  next_button({
    Key? key,
    required this.innerPageController,
    required this.isThird,
    required this.outerPageController,
  }) : super(key: key);
  var outerPageController = PageController();
  var innerPageController = PageController();
  bool isThird;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => defaultColor2(),
        ),
      ),
      onPressed: () {
        innerPageController.nextPage(
          duration: const Duration(milliseconds: 750),
          curve: Curves.fastLinearToSlowEaseIn,
        );
        outerPageController.nextPage(
          duration: const Duration(milliseconds: 750),
          curve: Curves.fastLinearToSlowEaseIn,
        );
        if (onBoardingPageViewList.length == 2) isThird = true;
        if (isThird) {
          navigator(
            context: context,
            widget: const login(),
          );
        }
      },
      child: Text(
        "Next",
        style: styleBold(
          color: defaultColor3(),
          size: 24.sp,
        ),
      ),
    );
  }
}
