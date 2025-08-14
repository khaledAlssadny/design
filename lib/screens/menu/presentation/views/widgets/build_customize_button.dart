import 'package:design/core/constants/colors.dart';
import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCustomizeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BuildCustomizeButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            "Customize",
            style: AppTextStyles.bold18
                .copyWith(color: Color(0xff9A3324), fontSize: 16.sp),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: 5.w),
          Container(
            width: 15.w,
            height: 15.h,
            decoration: BoxDecoration(
              color: const Color(0xFF9A3324),
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(color: Colors.white, width: .005),
            ),
            child: Icon(
              Icons.expand_more,
              size: 12.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
