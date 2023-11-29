import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';
import 'package:hekta/features/home_layout/presenation/manager/home_layout_cubit.dart';
import 'package:hekta/features/my_shop_layout/presenation/view/widgets/myShop_layout_bodyScreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class layout_screen extends StatelessWidget {
   layout_screen({Key? key}) : super(key: key);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: Scaffold(
        body: const myShop_layout_bodyScreen(),
        bottomNavigationBar: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
          builder: (context, state) {
            var cubit = HomeLayoutCubit.get(context);
            return SalomonBottomBar(
              backgroundColor: Colors.grey[80],
              currentIndex: _currentIndex,
              onTap: (i) {
                // setState(() => _currentIndex = i);
                _currentIndex = cubit.changeNavBarIndex(i);
              },
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: ImageIcon(
                    const AssetImage(Assets.shopNavigation),
                    color: _currentIndex == 0
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
                    const AssetImage(Assets.chatNavigation),
                    color: _currentIndex == 1
                        ? Colors.white
                        : const Color(0xFF0353B7),
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
                  icon: ImageIcon(
                    const AssetImage(Assets.shopCartNavigation),
                    color: _currentIndex == 2
                        ? Colors.white
                        : const Color(0xFF0353B7),
                  ),
                  title: const Text(
                    'Cart',
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
                  icon: ImageIcon(
                    const AssetImage(Assets.addChatNavigation),
                    color: _currentIndex == 3
                        ? Colors.white
                        : const Color(0xFF0353B7),
                  ),
                  title: const Text(
                    'add chat',
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
                  icon: ImageIcon(
                    const AssetImage(Assets.barGraphNavigation),
                    color: _currentIndex == 4
                        ? Colors.white
                        : const Color(0xFF0353B7),
                  ),
                  title: const Text(
                    'business',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
            );
          },
        ),
      ),
    );
  }
}
