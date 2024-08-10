import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color kPrimaryColor = Color(0xFF5D23CD);
  static const Color kSecondaryColor = Color(0xFF8016CD);
  static const Color red = Colors.red;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color deepPurpleA700 = Color(0xFF4209CE);
  static const Color purple600 = Color(0xFF811AC3);
  static const Color grey = Color(0xFF9BA6A7);
  static const Color smoothIndicator = Color(0xFF6B1ECD);
  static List<Color> gradientColors = const [
    Color(0xFF1A48BF),
    Color(0xFF731BCD),
  ];
  static const Color kHintSearchTextField = Color(0xFF8E8E8E);
  static const Color kSearchIconORTextField = Color(0xFFBCB7B7);
  static const Color kTransparent = Color(0xFF6A6565);
  static const Color kHintTextField = Color(0xFF5B5E5F);
  static Color kTextField = const Color(0xFF717676).withOpacity(0.5);
  static const Color kTitleTextField = Color(0xFF717676);
}
