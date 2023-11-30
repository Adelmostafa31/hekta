// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';

class home_top_logo extends StatelessWidget {
  home_top_logo({super.key, this.width = 131, this.height = 131});

  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!,
      height: height!,
      decoration: const ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(
            width: 1,
          ),
        ),
      ),
      child: const Image(
        image: AssetImage(Assets.imagesEduGamePhoto),
      ),
    );
  }
}
