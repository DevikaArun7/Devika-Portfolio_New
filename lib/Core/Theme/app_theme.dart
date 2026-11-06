import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Arial',
      colorScheme: const ColorScheme.dark(
        primary: AppColors.purple,
        secondary: AppColors.blue,
        surface: AppColors.surface,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: AppColors.white,
          fontSize: 56,
          fontWeight: FontWeight.w800,
          letterSpacing: -2,
        ),
        headlineMedium: TextStyle(
          color: AppColors.white,
          fontSize: 38,
          fontWeight: FontWeight.w800,
          letterSpacing: -1,
        ),
        titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: AppColors.muted, fontSize: 16, height: 1.8),
      ),
    );
  }
}
