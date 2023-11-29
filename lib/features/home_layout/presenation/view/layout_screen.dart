import 'package:flutter/material.dart';
import 'package:hekta/core/constants/assets.dart';
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
            icon: const ImageIcon(
              AssetImage(Assets.shopNavigation),
              // color: Colors.white,
            ),
            title: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: const ImageIcon(
              AssetImage(Assets.chatNavigation),
              // color: Color(0xFF0353B7),
            ),
            title: const Text(
              'Chat',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: const ImageIcon(
              AssetImage(Assets.shopCartNavigation),
              // color: Color(0xFF0353B7),
            ),
            title: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: const ImageIcon(
              AssetImage(Assets.addChatNavigation),
              // color: Color(0xFF0353B7),
            ),
            title: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
            selectedColor: const Color(0xFF0353B7),
          ),
          SalomonBottomBarItem(
            icon: const ImageIcon(
              AssetImage(Assets.barGraphNavigation),
              // color: Color(0xFF0353B7),
            ),
            title: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
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
