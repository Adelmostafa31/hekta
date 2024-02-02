import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/payment/presentation/views/payments.dart';

// ignore: camel_case_types
class pickPackageButtons extends StatelessWidget {
  const pickPackageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              alignment: AlignmentDirectional.center,
              height: 50.h,
              width: 125.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: defaultColor2(),
                ),
              ),
              child: Text(
                'Cancel',
                style: style(color: defaultColor2(), size: 20.sp),
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              navigator(context: context, widget: const payments());
            },
            child: Container(
              alignment: AlignmentDirectional.center,
              height: 50.h,
              width: 125.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: defaultColor2()),
              child: Text(
                'Next',
                style: style(color: defaultColor3(), size: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
