// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class otp_text_form extends StatelessWidget {
  const otp_text_form({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: defaultColor3(),
        boxShadow: [shadow],
        shape: BoxShape.circle,
      ),
      height: 100,
      width: 80,
      child: TextFormField(
        onSaved: (pin1) {},
        controller: controller,
        keyboardType: TextInputType.number,
        maxLines: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        cursorColor: defaultColor1(),
        style: TextStyle(color: defaultColor5(), fontSize: 22),
        decoration: InputDecoration(
          focusColor: defaultColor1(),
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
