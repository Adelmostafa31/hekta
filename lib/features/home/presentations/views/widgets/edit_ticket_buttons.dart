// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';

class edit_ticket_buttons extends StatelessWidget {
  const edit_ticket_buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          padding: EdgeInsetsDirectional.zero,
          icon: Image(
            image: const AssetImage(
              Assets.imagesEdit,
            ),
            width: 30.w,
            height: 30.h,
          ),
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsetsDirectional.zero,
          onPressed: () {},
          icon: Image(
            image: const AssetImage(
              Assets.imagesTicket,
            ),
            width: 30.w,
            height: 30.h,
          ),
        ),
      ],
    );
  }
}
