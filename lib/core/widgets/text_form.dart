// ignore_for_file: must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/styles/colors.dart';

class text_form extends StatelessWidget {
  text_form({
    super.key,
    required this.hint,
    required this.obscure,
    required this.type,
    this.controller,
    this.hintFont,
    this.validate,
    // this.height,
    this.width,
    this.readOnly,
    this.color,
  });
  final String hint;
  final bool obscure;
  final TextInputType type;
  final TextEditingController? controller;
  double? hintFont = 16;
  Color? color = defaultColor1();
  double? width = double.infinity;

  FormFieldValidator? validate;
  bool? readOnly = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        autocorrect: true,
        enabled: readOnly!,
        cursorColor: defaultColor2(),
        controller: controller,
        keyboardType: type,
        validator: validate,
        obscureText: obscure,
        maxLines: 1,
        style: TextStyle(
          fontSize: 20.sp,
          color: defaultColor5(),
        ),
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          hintText: hint,
          hoverColor: defaultColor2(),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          focusColor: defaultColor2(),
          hintStyle: TextStyle(
            color: color,
            fontSize: hintFont,
          ),
        ),
      ),
    );
  }
}
