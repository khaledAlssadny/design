import 'package:design/core/constants/text_styles.dart';
import 'package:design/screens/menu/data/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCategoryItem extends StatelessWidget {
  final Category category;
  final bool isSelected;

  const BuildCategoryItem({
    super.key,
    required this.category,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 3, 10, 3),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF6B318) : Colors.white,
          borderRadius: BorderRadius.circular(29.r),
          border: Border.all(color: const Color(0xFFF6B318)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 6.w),
            Text(
              category.name,
              style: AppTextStyles.semi18,
              overflow: TextOverflow.ellipsis,
            ),
             SizedBox(width: 12.w),
          ],
        ),
      ),
    );
  }
}
