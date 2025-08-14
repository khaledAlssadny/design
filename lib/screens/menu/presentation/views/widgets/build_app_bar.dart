import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Row(
        children: [
          Text("Explore Menu",
              style: AppTextStyles.regular18.copyWith(
                fontFamily: 'OperaWestern',
              )),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 35.sp),
          ),
        ],
      ),
    );
  }
}
