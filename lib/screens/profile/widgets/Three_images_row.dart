import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeImagesRow extends StatelessWidget {
  const ThreeImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCircleItem(
            imagePath: "assets/images/favorites_icon.png",
            title: "Favorites",
            onTap: () {
              print("Image 1 tapped");
            },
          ),
          _buildCircleItem(
            imagePath: "assets/images/rewards_icon.png",
            title: "Rewards",
            onTap: () {
              print("Image 2 tapped");
            },
          ),
          _buildCircleItem(
            imagePath: "assets/images/orders_icon.png",
            title: "Orders",
            onTap: () {
              print("Image 3 tapped");
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCircleItem({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30.r),
      child: Column(
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              // color: const Color.fromARGB(246, 255, 247, 0), // #F6B31812
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 5.h),
          Text(title, style: AppTextStyles.semi18),
        ],
      ),
    );
  }
}
