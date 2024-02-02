// ignore_for_file: camel_case_types

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';
import 'package:hekta/features/payment/presentation/views/widgets/details.dart';
import 'package:hekta/features/payment/presentation/views/widgets/payment_card.dart';
import 'package:hekta/features/payment/presentation/views/widgets/success.dart';

class payments extends StatefulWidget {
  const payments({super.key});

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const top_log_reg_design(text1: '', text2: ''),
              EasyStepper(
                alignment: AlignmentDirectional.center,
                activeStepBackgroundColor: Colors.greenAccent,
                maxReachedStep: 3,
                showTitle: true,
                activeStep: index,
                lineStyle: lineSytle,
                showLoadingAnimation: false,
                stepShape: StepShape.circle,
                stepRadius: 14,
                finishedStepBorderColor: Colors.greenAccent,
                finishedStepTextColor: Colors.greenAccent,
                finishedStepBackgroundColor: Colors.greenAccent,
                activeStepIconColor: Colors.greenAccent,
                steps: [
                  EasyStep(
                    customStep: Icon(
                      Icons.check,
                      color: defaultColor3(),
                    ),
                    customLineWidget: const SizedBox.shrink(),
                    customTitle: Text(
                      'Details',
                      textAlign: TextAlign.center,
                      style: styleBold(
                        color: defaultColor5().withOpacity(0.5),
                        size: 12.sp,
                      ),
                    ),
                    icon: const Icon(Icons.golf_course),
                  ),
                  EasyStep(
                    customTitle: Text(
                      'Payment',
                      textAlign: TextAlign.center,
                      style: styleBold(
                        color: defaultColor5().withOpacity(0.5),
                        size: 12.sp,
                      ),
                    ),
                    customLineWidget: const SizedBox.shrink(),
                    icon: const Icon(Icons.golf_course),
                    customStep: Icon(
                      Icons.check,
                      color: defaultColor3(),
                    ),
                  ),
                  EasyStep(
                    customLineWidget: const SizedBox.shrink(),
                    icon: Icon(
                      Icons.golf_course,
                      color: defaultColor3(),
                    ),
                    customTitle: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: styleBold(
                        color: defaultColor5().withOpacity(0.5),
                        size: 12.sp,
                      ),
                    ),
                    customStep: Icon(
                      Icons.check,
                      color: defaultColor3(),
                    ),
                  ),
                ],
              ),
              50.height,
              if (index == 0) const details(),
              if (index == 1) const payment_card(),
              if (index == 2) const success(),
            ],
          ),
        ),
      ),
      floatingActionButton: index == 2
          ? const SizedBox.shrink()
          : InkWell(
              onTap: () {
                setState(() {
                  if (index != 2) {
                    index++;
                  }
                });
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
    );
  }
}
