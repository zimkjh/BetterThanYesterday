import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final _inputText = ''.obs;
  get inputText => _inputText.value;
  set inputText(value) => _inputText.value = value;

  final localProvider = LocalProvider();

  Future<void> onClickCta() async {
    localProvider.setIsSavedFirstGoal(true);
    final initialGoal = Todo(0, inputText, Colors.red);
    await localProvider.setGoals([initialGoal]);
    Get.toNamed(Routes.MAIN);
  }
}
