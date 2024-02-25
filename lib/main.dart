import 'package:bty/theme_controller.dart';
import 'package:bty/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ThemeController());

  final ThemeController themeController = Get.find<ThemeController>();

  runApp(
    GetMaterialApp(
      theme: themeController.currentTheme,
      initialRoute: MainScreen.routeName,
      getPages: [
        GetPage(
          name: MainScreen.routeName,
          page: () => MainScreen(),
          transition: null,
        ),
      ],
    ),
  );
}
