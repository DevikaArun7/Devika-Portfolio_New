import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF090B12);
  static const surface = Color(0xFF111522);
  static const card = Color(0xFF151B2B);
  static const purple = Color(0xFF9875FF);
  static const blue = Color(0xFF5C9DFF);
  static const cyan = Color(0xFF5DE2E7);
  static const white = Color(0xFFF4F3FA);
  static const muted = Color(0xFF9BA3B7);
  static const border = Color(0xFF283149);

  static const gradient = LinearGradient(
    colors: [purple, blue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
