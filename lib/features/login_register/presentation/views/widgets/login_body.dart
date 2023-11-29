// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/member_form_feilds.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/shop_form_feilds.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/tab_bar_indecator.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';

class login_body extends StatelessWidget {
  const login_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 53.h),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    const top_log_reg_design(
                      text1: 'Welcome back',
                      text2: '',
                    ),
                    50.height,
                    const tab_bar_indecator(),
                    10.height,
                    const Expanded(
                      child: TabBarView(
                        children: [
                          member_form_feilds(),
                          shop_form_feilds()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
