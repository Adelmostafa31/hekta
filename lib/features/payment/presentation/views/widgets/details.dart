// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var countryController = TextEditingController();
    var zipCodeController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              detailsRow(text1: 'Package 1', text2: '40.00EGP'),
              detailsRow(text1: 'Taxes', text2: '5.00EGP'),
              10.height,
              Divider(
                color: defaultColor5().withOpacity(0.5),
                height: 2,
              ),
              10.height,
              detailsRow(text1: 'Subtotal', text2: '45.00EGP'),
              10.height,
              Divider(
                color: defaultColor5().withOpacity(0.5),
                height: 2,
              ),
              10.height,
              detailsRow(text1: 'Total', text2: '45.00EGP'),
            ],
          ),
        ),
        25.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Name',
            obscure: false,
            type: TextInputType.name,
            controller: nameController,
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
            hint: 'Country',
            obscure: false,
            type: TextInputType.text,
            controller: countryController,
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
            hint: 'ZIP Code',
            obscure: false,
            type: TextInputType.number,
            controller: zipCodeController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        25.height,
      ],
    );
  }

  Widget detailsRow({required String text1, required String text2}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style:
                styleBold(color: defaultColor5().withOpacity(0.7), size: 18.sp),
          ),
          Text(
            text2,
            style:
                styleBold(color: defaultColor5().withOpacity(0.7), size: 18.sp),
          ),
        ],
      );
}
