import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'TabletGothic';

  static const TextStyle heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle itemTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle description = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w100,
    fontSize: 13,
  );
}
