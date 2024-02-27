import 'package:bty/app_theme.dart';
import 'package:bty/intro/intro_screen.dart';
import 'package:bty/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: AppTheme.defaultTheme,
      initialRoute: MainScreen.routeName,
      getPages: [
        GetPage(
          name: MainScreen.routeName,
          page: () => MainScreen(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: IntroScreen.routeName,
          page: () => IntroScreen(),
          transition: Transition.rightToLeft,
        ),
      ],
    ),
  );
}
