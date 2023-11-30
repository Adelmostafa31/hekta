import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';

class chat_button extends StatelessWidget {
  const chat_button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          color: defaultColor2(),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Text(
              'Chat',
              style: styleBold(color: defaultColor3(), size: 12.sp),
            ),
            5.width,
            Image(
              image: const AssetImage(
                Assets.imagesChatNavBar,
              ),
              color: defaultColor3(),
            )
          ],
        ),
      ),
    );
  }
}
