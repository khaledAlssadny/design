import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'TabletGothic';

  // Semi-bold (w600)
  // Bold (w700)
  // Regular (w400)
  static TextStyle semi18 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static TextStyle bold20 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
  );

  static TextStyle bold18 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
  );

  static TextStyle regular18 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
  );

  static TextStyle regular16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );

  static final TextStyle semi14 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
  );
}
