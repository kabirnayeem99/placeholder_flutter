import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppColorScheme {
  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF005CBA),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD7E3FF),
    onPrimaryContainer: Color(0xFF001B3E),
    secondary: Color(0xFF00677E),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFB5EBFF),
    onSecondaryContainer: Color(0xFF001F28),
    tertiary: Color(0xFF984061),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD9E2),
    onTertiaryContainer: Color(0xFF3E001D),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFEFBFF),
    onBackground: Color(0xFF00174C),
    surface: Color(0xFFFEFBFF),
    onSurface: Color(0xFF00174C),
    surfaceVariant: Color(0xFFE0E2EC),
    onSurfaceVariant: Color(0xFF44474E),
    outline: Color(0xFF74777F),
    onInverseSurface: Color(0xFFEFF0FF),
    inverseSurface: Color(0xFF022978),
    inversePrimary: Color(0xFFAAC7FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF005CBA),
  );

  static ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.dodgerBlue,
    onPrimary: AppColors.white,
    primaryContainer: AppColors.blackBalticSea,
    onPrimaryContainer: AppColors.blackShark,
    secondary: AppColors.blackShark,
    onSecondary: AppColors.white,
    secondaryContainer: AppColors.dodgerBlue,
    onSecondaryContainer: AppColors.white,
    tertiary: AppColors.blackOuterSpace,
    onTertiary: AppColors.white,
    tertiaryContainer: AppColors.white,
    onTertiaryContainer: AppColors.blackOuterSpace,
    error: Colors.redAccent,
    onError: AppColors.white,
    background: AppColors.blackBalticSea,
    onBackground: AppColors.white,
    surface: AppColors.blackBalticSea,
    onSurface: AppColors.white,
  );
}
