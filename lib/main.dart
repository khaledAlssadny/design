// import 'package:design/screens/menu/menu_page.dart';+++++++++
import 'package:design/core/utils/service_locator.dart';
import 'package:design/screens/cart/cart_page.dart';
import 'package:design/screens/home/home_page..dart';
import 'package:design/screens/more/more_page.dart';
import 'package:design/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:design/core/utils/assets.dart';

import 'screens/menu/presentation/views/menu_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 925), // your design size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          // title: 'Food App',
          theme: ThemeData(
            fontFamily: 'TabletGothic',
          ),
          home: const MainScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePages(),
    const MenuView(), // Your existing home content
    const CartPage(),
    // const HomePage(),
    const ProfilePage(),
    const MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(0, AssetsData.home_inactive,
                    AssetsData.home_active, 'Home'),
                _buildNavItem(1, AssetsData.menu_inactive,
                    AssetsData.menu_active, 'Menu'),
                _buildNavItem(2, AssetsData.texas, AssetsData.texas, 'Texas'),
                _buildNavItem(3, AssetsData.profile_inactive,
                    AssetsData.profile_active, 'Profile'),
                _buildNavItem(4, AssetsData.more_inactive,
                    AssetsData.more_active, 'More'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String inactiveImagePath,
      String activeImagePath, String label) {
    final bool isSelected = _selectedIndex == index;

    if (label == 'Texas') {
      // Show bigger image only, no text
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          height: 100,
          width: 100,
          // color: Colors.amber,
          child: SvgPicture.asset(
            isSelected ? activeImagePath : inactiveImagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      // Show smaller image with label
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  isSelected ? activeImagePath : inactiveImagePath,
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: isSelected
                      ? const Color(0xFf2D2A26)
                      : const Color(0xff757575),
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
