import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/core/styles/colors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class layout_screen extends StatefulWidget {
  const layout_screen({Key? key}) : super(key: key);

  @override
  State<layout_screen> createState() => _layout_screenState();
}

class _layout_screenState extends State<layout_screen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.grey[80],
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: ImageIcon(
              const AssetImage(Assets.imagesShopOnTheBottomNav),
              size: 28,
              color:
                  _currentIndex == 0 ? Colors.white : const Color(0xFF0353B7),
            ),
            title: Text('My Shop',
                textAlign: TextAlign.center,
                style: styleBold(color: defaultColor3(), size: 17.sp)),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: ImageIcon(
              const AssetImage(Assets.imagesChatNavBar),
              size: 28,
              color:
                  _currentIndex == 1 ? Colors.white : const Color(0xFF0353B7),
            ),
            title: Text(
              'Chat',
              textAlign: TextAlign.center,
              style: styleBold(color: defaultColor3(), size: 17.sp),
            ),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: ImageIcon(
              const AssetImage(Assets.imagesShopcartOnTheBottomNav),
              size: 28,

              color:
                  _currentIndex == 2 ? Colors.white : const Color(0xFF0353B7),
            ),
            title: Text('Cart',
                textAlign: TextAlign.center,
                style: styleBold(color: defaultColor3(), size: 17.sp)),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: ImageIcon(
              const AssetImage(Assets.imagesAddChatNavBar),
              size: 28,

              color:
                  _currentIndex == 3 ? Colors.white : const Color(0xFF0353B7),
            ),
            title: Text('My Shop',
                textAlign: TextAlign.center,
                style: styleBold(color: defaultColor3(), size: 17.sp)),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: ImageIcon(
              const AssetImage(Assets.imagesBarGraphOnNavBar),
              size: 28,

              color:
                  _currentIndex == 4 ? Colors.white : const Color(0xFF0353B7),
            ),
            title: Text('Graph',
                textAlign: TextAlign.center,
                style: styleBold(color: defaultColor3(), size: 17.sp)),
            selectedColor: const Color(0xFF0353B7),
          ),
        ],
        // backgroundColor: const Color(0x3F000000),
        selectedColorOpacity: 0.9,
        unselectedItemColor: const Color(0xFF0353B7),
        selectedItemColor: Colors.white,
      ),
    );
  }
}
