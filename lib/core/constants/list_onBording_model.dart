import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/features/on_boarding/data/Model/on_boarding_model.dart';

List<OnBoardingModel> onBoardingPageViewList = [
  OnBoardingModel(
    text: const SizedBox(
      // width: 421,
      // height: 300,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Welcome to ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 29,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'Hekta\n',
              style: TextStyle(
                color: Color(0xFFFF7E22),
                fontSize: 29,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'We’re excited to have you onboard',
              style: TextStyle(
                color: Colors.black,
                fontSize: 29,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    ),
    backGroundImage: Assets.imagesOnBoarding1,
  ),
  OnBoardingModel(
    text: const SizedBox(
      // width: 421,
      // height: 300,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Looking for a local brand?\n',
              style: TextStyle(
                color: Color(0xFFFF7E22),
                fontSize: 29,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'Check out our recommended brands',
              style: TextStyle(
                color: Colors.black,
                fontSize: 29,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    ),
    backGroundImage: Assets.imagesOnBoarding2,
  ),
  OnBoardingModel(
    text: const SizedBox(
      // width: 421,
      // height: 300,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Are you a local brand owner?\n',
              style: TextStyle(
                color: Color(0xFFFF7E22),
                fontSize: 28,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'We’ll Connect you to your Customers',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    ),
    backGroundImage: Assets.imagesOnBoarding3,
  ),
];