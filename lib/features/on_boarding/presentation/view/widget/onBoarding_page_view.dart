
// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/constants.dart';

class onBoarding_page_view extends StatelessWidget {
  Widget? bigText;

  onBoarding_page_view({
    super.key,
    required this.bigText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(start: 20, end: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [bigText!],
      ),
    );
  }
}