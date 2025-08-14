// import 'package:design/screens/menu/menu_page.dart';+++++++++
import 'package:design/core/constants/colors.dart';
import 'package:design/core/constants/text_styles.dart';
import 'package:design/core/utils/service_locator.dart';
import 'package:design/screens/cart/cart_page.dart';
import 'package:design/screens/home/home_page..dart';
import 'package:design/screens/more/more_page.dart';
import 'package:design/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:design/core/utils/assets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'screens/menu/presentation/views/menu_view.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  // final prefs = SharedPreferences.getInstance();
  // runApp(DevicePreview(builder: (context) => MyApp()));
  runApp(MyApp());
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
          // builder: DevicePreview.appBuilder,
          // title: 'Food App',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
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
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
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
        child: SizedBox(
          height: 100,
          width: 100,
          // color: Colors.amber,
          child: SvgPicture.asset(
            isSelected ? activeImagePath : inactiveImagePath,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      // Show smaller image with label
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30.h,
                width: 30.w,
                child: SvgPicture.asset(
                  isSelected ? activeImagePath : inactiveImagePath,
                  height: 30.h,
                  width: 30.w,
                ),
              ),
              SizedBox(height: 4.h),
              Text(label,
                  style: AppTextStyles.semi14.copyWith(
                    color: isSelected ? AppColors.primary : AppColors.secondary,
                  )),
            ],
          ),
        ),
      );
    }
  }
}
