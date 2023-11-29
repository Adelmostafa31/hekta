// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';

class home_top_logo extends StatelessWidget {
  const home_top_logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 131,
      height: 131,
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
