// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/app_bar.dart';
import 'package:hekta/features/orders/presentation/views/widgets/filters.dart';
import 'package:hekta/features/orders/presentation/views/widgets/order_item.dart';

class orders_body extends StatelessWidget {
  const orders_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const app_bar(),
              50.height,
              Container(
                alignment: AlignmentDirectional.center,
                width: 150.w,
                height: 55.h,
                decoration: orders_decoration,
                child: Text(
                  'Orders',
                  style: styleBold(
                    color: defaultColor5(),
                    size: 25.sp,
                  ),
                ),
              ),
              50.height,
              const filters(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const order_item(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
