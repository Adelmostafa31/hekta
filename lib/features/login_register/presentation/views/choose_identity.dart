// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/choose_login_register.dart';

class choose_identity extends StatelessWidget {
  const choose_identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: defaultColor3(),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/background.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo2.png'),
          90.height,
          Container(
            alignment: AlignmentDirectional.center,
            width: 160.w,
            height: 40.h,
            decoration: decoration,
            child: TextButton(
              onPressed: () {
                navigator(
                  context: context,
                  widget: const choose_login_register(),
                );
              },
              child: Text('Customer', style: style1),
            ),
          ),
          20.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                width: 160.w,
                height: 40.h,
                decoration: decoration,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Shop Owner', style: style1),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                width: 165.w,
                height: 40.h,
                decoration: decoration,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Shop Member', style: style1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
