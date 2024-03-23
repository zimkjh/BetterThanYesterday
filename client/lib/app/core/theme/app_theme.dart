import 'package:bty/app/core/theme/color_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData defaultTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.green1,
      brightness: Brightness.light,
      background: Colors.white,
    ),
    fontFamily: 'Suite',
    scaffoldBackgroundColor: Colors.white,
  );
}
