// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:hekta/features/home/presentations/views/widgets/add_bio_item.dart';
import 'package:hekta/features/home/presentations/views/widgets/app_bar_home.dart';
import 'package:hekta/features/home/presentations/views/widgets/main_item_home.dart';
import 'package:hekta/features/home/presentations/views/widgets/top_home.dart';

class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const app_bar_home(),
          const top_home(),
          const add_bio_item(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const main_item_home(),
            itemCount: 5,
          )
        ],
      ),
    );
  }
}


// 27

