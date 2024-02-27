import 'package:bty/common/local_controller.dart';
import 'package:bty/intro/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  late LocalController localProvider;

  bool get isSavedFirstGoal => localProvider.getIsSavedFirstGoal();

  @override
  Future<void> onInit() async {
    super.onInit();

    final prefs = await SharedPreferences.getInstance();
    Get.put(LocalController(prefs));
    localProvider = Get.find<LocalController>();

    if (!isSavedFirstGoal) {
      debugPrint('h?');

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Get.toNamed(IntroScreen.routeName);
      });
    } else {
      debugPrint('wow');
    }
  }
}
