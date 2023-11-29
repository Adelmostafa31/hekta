// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class rating extends StatelessWidget {
  const rating({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: 2,
      onValueChanged: (v) {
        //
        // setState(() {
        //   value = v;
        // });
      },
      starBuilder: (index, color) => Icon(
        Icons.star,
        color: color,
      ),
      starCount: 5,
      starSize: 20,
      valueLabelColor: const Color(0xff9b9b9b),
      valueLabelTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 12.0,
      ),
      valueLabelRadius: 5,
      maxValue: 5,
      starSpacing: 2,
      maxValueVisibility: true,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 1000),
      valueLabelPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
      valueLabelMargin: const EdgeInsets.only(right: 8),
      starOffColor: const Color(0xffe7e8ea),
      starColor: const Color(0xFFEB6E00),
    );
  }
}
