// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/login_navigate_button.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/signUp_navigate_button.dart';

class choose_log_reg_body extends StatelessWidget {
  const choose_log_reg_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height - 380.h,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/images/CH_LOG.png'),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 105.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Join our platform!',
                style: styleBold(color: defaultColor2(), size: 29.w),
              ),
              Text(
                'Here is unlimited shopping....',
                style:
                    style(color: defaultColor2().withOpacity(0.6), size: 19.w),
              ),
              50.height,
              const login_navigate_button(),
              30.height,
              const signUp_navigate_button(),
            ],
          ),
        ],
      ),
    );
  }
}
