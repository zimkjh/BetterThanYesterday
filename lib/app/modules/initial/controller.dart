import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  final localProvider = LocalProvider();

  final _goals = Rx<List<int>?>(null);
  List<int>? get goals => _goals.value;
  set goals(List<int>? value) => _goals.value = value;

  @override
  Future<void> onInit() async {
    super.onInit();

    if (!localProvider.getIsSavedFirstGoal()) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.toNamed(Routes.INTRO);
      });
    } else {}
  }
}
