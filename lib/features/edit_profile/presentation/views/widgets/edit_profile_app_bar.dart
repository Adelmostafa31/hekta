import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';

class edit_profile_app_bar extends StatelessWidget {
  const edit_profile_app_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(
        start: 17,
        top: 10,
        end: 17,
      ),
      child: const Row(
        children: [
          Image(
            image: AssetImage(Assets.imagesLogo2),
            height: 55,
            width: 108,
          ),
          Spacer(),
          Column(
            children: [
              Image(image: AssetImage(Assets.imagesProfile)),
              SizedBox(
                width: 105,
                height: 26,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'edit profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}
