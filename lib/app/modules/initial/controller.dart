import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitialController extends GetxController {
  final box = GetStorage();

  @override
  Future<void> onInit() async {
    super.onInit();

    const keyIsSavedFirstGoal = 'isSavedFirstGoal';
    box.writeIfNull(keyIsSavedFirstGoal, false);
    if (!box.read(keyIsSavedFirstGoal) == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.toNamed(Routes.INTRO);
      });
    } else {
      //todo
    }
  }
}
