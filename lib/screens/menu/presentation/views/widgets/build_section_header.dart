import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildSectionHeader extends StatelessWidget {
  final String title;
  final String itemCount;
  final VoidCallback? onTap;
  final bool showActionButton;

  const BuildSectionHeader({
    super.key,
    required this.title,
    required this.itemCount,
    this.onTap,
    this.showActionButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  Text('$title ',
                      style: AppTextStyles.bold20.copyWith(fontSize: 20.sp)),
                  Text('($itemCount Items)', style: AppTextStyles.regular16),
                ],
              ),
            ),
          ),
          if (showActionButton)
            IconButton(
              onPressed: onTap,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16.sp,
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
