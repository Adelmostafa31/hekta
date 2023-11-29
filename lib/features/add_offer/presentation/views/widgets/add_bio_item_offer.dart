// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';
import 'package:hekta/features/add_offer/presentation/views/add_offer.dart';
import 'package:hekta/features/home/presentations/views/widgets/add_item_home.dart';

class add_bio_item_offer extends StatelessWidget {
  const add_bio_item_offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bioController = TextEditingController();
    return Padding(
      padding: paddingBuilder(top: 25, start: 17, end: 17),
      child: Column(
        children: [
          Container(
            height: 90,
            decoration: decoration_form_feild(color: defaultColor5()),
            child: text_form(
              hint: 'Add Bio',
              obscure: false,
              type: TextInputType.emailAddress,
              controller: bioController,
              width: double.infinity,
              readOnly: true,
              color: defaultColor4().withOpacity(0.5),
            ),
          ),
          30.height,
          Row(
            children: [
              const add_item_home(),
              const Spacer(),
              Container(
                width: 71,
                height: 26,
                alignment: AlignmentDirectional.center,
                decoration: shape2,
                child: Text(
                  'Items',
                  style: styleBold(color: defaultColor5(), size: 15.sp),
                ),
              ),
              10.width,
              InkWell(
                onTap: () {
                  navigator(
                    context: context,
                    widget: const add_offer(),
                  );
                },
                child: Container(
                  width: 71,
                  height: 26,
                  decoration: shape2,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Offers',
                    style: styleBold(color: defaultColor5(), size: 15.sp),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
