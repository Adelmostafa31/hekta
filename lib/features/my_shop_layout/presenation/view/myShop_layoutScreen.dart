import 'package:flutter/material.dart';
import 'package:hekta/features/my_shop_layout/presenation/view/widgets/myShop_layout_bodyScreen.dart';

class my_shop_layout_screen extends StatelessWidget {
  const my_shop_layout_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:myShop_layout_bodyScreen(),
    );
  }
}
