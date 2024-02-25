import 'package:bty/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxService {
  static final _defaultTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.green1,
      background: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
    ),
    fontFamily: 'Suite',
  );

  ThemeData get currentTheme => _defaultTheme;
}
