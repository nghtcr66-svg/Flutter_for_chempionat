import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFE94560);
  static const Color background = Color(0xFFF9F9FA);
  static const Color textDark = Color(0xFF1E1E2D);
  static const Color textMuted = Color(0xFF8F92A1);
  static const Color fieldBorder = Color(0xFFE0E0E6);
  static const Color Online = Color(0xFF08F403);
  static const Color Gold = Color(0xFFF4C73E);
  static const Color Grey = Color(0xFFB7B7B7);
}

class AppTypography{
  static const TittlePoppins = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
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
  static const TittleHat = TextStyle(
    fontFamily: 'RedHatText',
    fontSize: 20,
    color:  AppColors.primary,
    height: 28/20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.33
  );
  static const MainHat = TextStyle(
    fontFamily: 'RedHatText',
    fontSize: 14,
    color:  AppColors.textDark,
    height: 1,
    fontWeight: FontWeight.bold
  );
  static const RegularHat = TextStyle(
      fontFamily: 'RedHatText',
      fontSize: 10,
      color:  AppColors.textDark,
      height: 1,
      fontWeight: FontWeight.w400
  );

}