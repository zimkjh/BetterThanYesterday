import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGoalController extends GetxController {
  final localProvider = LocalProvider();

  final _inputText = ''.obs;
  get inputText => _inputText.value;

  static const colors = [
    AppColors.blue1,
    AppColors.yellow1,
    AppColors.pink1,
    AppColors.green2,
    AppColors.purple1,
    AppColors.blue1,
    AppColors.yellow1,
    AppColors.pink1,
    AppColors.green2,
    AppColors.purple1,
  ];

  final _selectedColor = colors.first.obs;
  Color get selectedColor => _selectedColor.value;

  Future<void> onClickCta() async {
    localProvider.setIsSavedFirstGoal(true);
    final initialGoal = Todo(0, inputText, Colors.red);
    await localProvider.setGoals([initialGoal]);
    Get.toNamed(Routes.MAIN);
  }

  void onChangeInputText(String value) {
    _inputText.value = value;
  }

  void saveTodo() {
    debugPrint('save todo');
  }

  void onSelectColor(Color color) {
    _selectedColor.value = color;
  }
}
