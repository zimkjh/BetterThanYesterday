import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitButton extends GetView<AddGoalController> {
  const SubmitButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      child: Container(
        width: Get.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.lightGray3,
        ),
        child: GestureDetector(
          onTap: controller.saveTodo,
          child: Center(
            child: Text(
              'add_goal_confirm'.tr,
              style: content1,
            ),
          ),
        ),
      ),
    );
  }
}
