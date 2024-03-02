import 'package:bty/app/core/theme/app_theme.dart';
import 'package:bty/app/routes/app_pages.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      theme: AppTheme.defaultTheme,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages,
    ),
  );
}
