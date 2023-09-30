// ignore_for_file: camel_case_types, prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/login_register/presentation/views/choose_identity.dart';

class splash_body extends StatefulWidget {
  const splash_body({super.key});

  @override
  State<splash_body> createState() => _splash_bodyState();
}

class _splash_bodyState extends State<splash_body> {
  @override
  void initState() {
    super.initState();
    // var boarding = CachHelper.getData(key: 'onBoarding');
    // var uid = CachHelper.getData(key: 'uid');
    // Widget? widget;
    // if (boarding != null) {
    //   if (uid != null) {
    //     widget = Recipe_Layout();
    //   } else {
    //     widget = loginScreen();
    //   }
    // } else {
    //   widget = const onBordingScreen();
    // }
    Timer(
      const Duration(milliseconds: 2000),
      () => navigatorPushRemove(
        context: context,
        widget: const choose_identity(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
