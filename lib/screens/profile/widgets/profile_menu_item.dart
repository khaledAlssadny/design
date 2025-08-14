import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 22.w,
              height: 22.h,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(title,
                  style: AppTextStyles.semi18.copyWith(
                      color: title == 'Delete my Account'
                          ? Color(0xFF9A3324)
                          : Colors.black)),
            ),
            Icon(Icons.arrow_forward_ios, size: 12.sp),
          ],
        ),
      ),
    );
  }
}
