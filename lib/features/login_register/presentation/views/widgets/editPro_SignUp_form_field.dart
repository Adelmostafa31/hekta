// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:hekta/core/widgets/text_form.dart';
import 'package:hekta/features/login_register/presentation/views/widgets/top_log_reg_design.dart';

class editPro_SignUp_form_field extends StatelessWidget {
  const editPro_SignUp_form_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var shopNameController = TextEditingController();
    var locationController = TextEditingController();
    var bossController = TextEditingController();
    var passwordController = TextEditingController();
    return Column(
      children: [

        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Email',
            obscure: false,
            type: TextInputType.emailAddress,
            controller: emailController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        20.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Phone Number',
            obscure: false,
            type: TextInputType.phone,
            controller: phoneController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        20.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Shop Name',
            obscure: false,
            type: TextInputType.text,
            controller: shopNameController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        20.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Location',
            obscure: false,
            type: TextInputType.text,
            controller: locationController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        20.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Boss Name',
            obscure: false,
            type: TextInputType.text,
            controller: bossController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
        20.height,
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: decoration_form_feild(),
          child: text_form(
            hint: 'Password',
            obscure: true,
            type: TextInputType.emailAddress,
            controller: passwordController,
            width: double.infinity,
            readOnly: true,
            color: defaultColor4().withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
