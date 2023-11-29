// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hekta/features/add_offer/presentation/views/widgets/add_bio_item_offer.dart';
import 'package:hekta/features/add_offer/presentation/views/widgets/app_bar_offer.dart';
import 'package:hekta/features/add_offer/presentation/views/widgets/main_item_offer.dart';
import 'package:hekta/features/add_offer/presentation/views/widgets/top_offer.dart';

class add_offer_body extends StatelessWidget {
  const add_offer_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const app_bar_offer(),
              const top_offer(),
              const add_bio_item_offer(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const main_item_offer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
