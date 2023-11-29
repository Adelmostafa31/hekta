// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/base_layout/presenation/manager/layout_cubit.dart';
import 'package:hekta/features/base_layout/presenation/manager/layout_states.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class bottom_nav extends StatelessWidget {
  const bottom_nav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<layout_cubit, layout_states>(
      builder: (context, state) {
        var cubit = layout_cubit.get(context);
        return SalomonBottomBar(
          backgroundColor: Colors.grey[80],
          currentIndex: cubit.currentIndex,
          onTap: (i) {
            // setState(() => _currentIndex = i);
            cubit.currentIndex = cubit.changeNavBarIndex(i);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: ImageIcon(
                const AssetImage(Assets.imagesShopOnTheBottomNav),
                color: cubit.currentIndex == 0
                    ? Colors.white
                    : const Color(0xFF0353B7),
              ),
              unselectedColor: Colors.white,
              title: Text(
                'My Shop',
                textAlign: TextAlign.center,
                style: navBarStyle(),
              ),
              selectedColor: const Color(0xFF0353B7),
            ),
            SalomonBottomBarItem(
              icon: ImageIcon(
                const AssetImage(Assets.imagesChatNavBar),
                color: cubit.currentIndex == 1
                    ? Colors.white
                    : const Color(0xFF0353B7),
              ),
              title: Text(
                'Chat',
                textAlign: TextAlign.center,
                style: navBarStyle(),
              ),
              selectedColor: const Color(0xFF0353B7),
            ),
            SalomonBottomBarItem(
              icon: ImageIcon(
                const AssetImage(Assets.imagesShopcartOnTheBottomNav),
                color: cubit.currentIndex == 2
                    ? Colors.white
                    : const Color(0xFF0353B7),
              ),
              title: Text(
                'Orders',
                textAlign: TextAlign.center,
                style: navBarStyle(),
              ),
              selectedColor: const Color(0xFF0353B7),
            ),
            SalomonBottomBarItem(
              icon: ImageIcon(
                const AssetImage(Assets.imagesAddChatNavBar),
                color: cubit.currentIndex == 3
                    ? Colors.white
                    : const Color(0xFF0353B7),
              ),
              title: Text(
                'Add Chat',
                textAlign: TextAlign.center,
                style: navBarStyle(),
              ),
              selectedColor: const Color(0xFF0353B7),
            ),
            SalomonBottomBarItem(
              icon: ImageIcon(
                const AssetImage(Assets.imagesBarGraphOnNavBar),
                color: cubit.currentIndex == 4
                    ? Colors.white
                    : const Color(0xFF0353B7),
              ),
              title: Text(
                'Business',
                textAlign: TextAlign.center,
                style: navBarStyle(),
              ),
              selectedColor: const Color(0xFF0353B7),
            ),
          ],
          // backgroundColor: const Color(0x3F000000),
          selectedColorOpacity: 0.9,
          unselectedItemColor: const Color(0xFF0353B7),
          selectedItemColor: Colors.white,
        );
      },
    );
  }
}
