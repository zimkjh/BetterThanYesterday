import 'package:bty/app/core/theme/app_theme.dart';
import 'package:bty/app/modules/intro/page.dart';
import 'package:bty/app/modules/main/page.dart';
import 'package:bty/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: AppTheme.defaultTheme,
      initialRoute: MainScreen.routeName,
      getPages: [
        GetPage(
          name: Routes.INITIAL,
          page: () => MainScreen(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: Routes.INTRO,
          page: () => IntroScreen(),
          transition: Transition.rightToLeft,
        ),
      ],
    ),
  );
}
