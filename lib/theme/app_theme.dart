import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData buildThemeData() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.manrope().fontFamily,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w800,
          color: AppColors.black38,
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w800,
          color: AppColors.black38,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.black38,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.black38,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.black38,
          fontSize: 20,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.black38,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.black38,
        ),
      ),
    );
  }
}
