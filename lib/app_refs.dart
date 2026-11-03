import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFE94560);
  static const Color background = Color(0xFFF9F9FA);
  static const Color textDark = Color(0xFF1E1E2D);
  static const Color textMuted = Color(0xFF8F92A1);
  static const Color fieldBorder = Color(0xFFE0E0E6);
}

class AppTypography{
  static const TittlePoppins = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24/20,
    color: AppColors.primary,
    height: 1,
    fontWeight: FontWeight.bold
  );
  static const NormalPoppins = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    color: AppColors.textDark,
    height: 1,
    fontWeight: FontWeight.w500
  );
  static const MainPoppins = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: AppColors.textDark,
      height: 1,
      fontWeight: FontWeight.normal
  );
}