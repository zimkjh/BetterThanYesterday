import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGoalController extends GetxController {
  late LocalProvider localProvider;

  Todo? prevTodo;

  final FocusNode focusNode = FocusNode();
  final TextEditingController textEditingController = TextEditingController();

  final _inputText = ''.obs;
  String get inputText => _inputText.value;

  static const colors = [
    AppColors.blue1,
    AppColors.yellow1,
    AppColors.pink1,
    AppColors.green2,
    AppColors.purple1,
    Color(0xFF8AD4E2),
    Color(0xFFE8B7C9),
    Color(0xFFCBD578),
    Color(0xFFA46D6D),
    Color(0xFF746F81),
  ];

  final _selectedColor = colors.first.obs;
  Color get selectedColor => _selectedColor.value;

  @override
  void onInit() {
    super.onInit();
    localProvider = Get.find<LocalProvider>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus();
    });

    prevTodo = Get.arguments;
    if (prevTodo != null) {
      _inputText.value = prevTodo!.title;
      textEditingController.text = prevTodo!.title;

      if (colors.contains(prevTodo!.color)) {
        _selectedColor.value = prevTodo!.color;
      }
    }
  }

  @override
  void onClose() {
    focusNode.dispose();
    textEditingController.dispose();
    super.onClose();
  }

  void onChangeInputText(String value) {
    _inputText.value = value;
  }

  Future<void> saveTodo() async {
    if (inputText.isEmpty) {
      return;
    }

    if (prevTodo != null) {
      prevTodo!.color = selectedColor;
      prevTodo!.title = inputText;
      await localProvider.updateTodo(prevTodo!);
    } else {
      await localProvider.addTodoList(inputText, selectedColor);
    }
    Get.back();
  }

  void onSelectColor(Color color) {
    _selectedColor.value = color;
  }
}
