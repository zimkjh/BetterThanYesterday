import 'package:bty/app/core/theme/app_theme.dart';
import 'package:bty/app/modules/initial/page.dart';
import 'package:bty/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      theme: AppTheme.defaultTheme,
      initialRoute: InitialPage.routeName,
      getPages: AppPages.pages,
    ),
  );
}
