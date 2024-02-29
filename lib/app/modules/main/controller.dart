import 'package:bty/app/data/provider/storage_provider.dart';
import 'package:bty/app/modules/intro/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  late StorageProvider localProvider;

  bool get isSavedFirstGoal => localProvider.getIsSavedFirstGoal();

  @override
  Future<void> onInit() async {
    super.onInit();

    final prefs = await SharedPreferences.getInstance();
    Get.put(StorageProvider(prefs));
    localProvider = Get.find<StorageProvider>();

    if (!isSavedFirstGoal) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Get.toNamed(IntroScreen.routeName);
      });
    } else {
      //todo
    }
  }
}
