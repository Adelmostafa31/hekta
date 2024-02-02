// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';

class payment_card extends StatelessWidget {
  const payment_card({super.key});

  @override
  Widget build(BuildContext context) {
    var cardNumberController = TextEditingController();
    var expiredDateController = TextEditingController();
    var cvvController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(image: AssetImage('assets/images/image.png')),
        25.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Number of card',
            obscure: false,
            type: TextInputType.number,
            controller: cardNumberController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        25.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Expiring date',
            obscure: false,
            type: TextInputType.datetime,
            controller: expiredDateController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        25.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'CVV',
            obscure: false,
            type: TextInputType.number,
            controller: cvvController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        70.height,
      ],
    );
  }
}
