// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/item_package.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';

class choose_package_body extends StatelessWidget {
  const choose_package_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 12.w,
            top: 20.h,
            left: 12.w,
          ),
          child: Column(
            children: [
              50.height,
              const top_log_reg_design(text1: 'Pick-Up Package', text2: ''),
              GridView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 17,
                  mainAxisSpacing: 30,
                  childAspectRatio: 4 / 4.9,
                ),
                itemBuilder: (constext, index) => const itemPackage(),
              ),
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
