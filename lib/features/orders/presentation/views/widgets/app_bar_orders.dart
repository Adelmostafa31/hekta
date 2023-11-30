// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';

class app_bar_home extends StatelessWidget {
  const app_bar_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(
        start: 17,
        top: 26,
        end: 17,
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage(Assets.imagesLogo2),
            height: 55,
            width: 108,
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: const Column(
              children: [
                Image(image: AssetImage(Assets.imagesProfile)),
                SizedBox(
                  width: 105,
                  height: 26,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Foush-',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Alex',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
