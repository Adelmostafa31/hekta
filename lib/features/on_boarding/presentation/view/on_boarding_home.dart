// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/onBoarding_body.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoarding_body(),
    );
  }
}
