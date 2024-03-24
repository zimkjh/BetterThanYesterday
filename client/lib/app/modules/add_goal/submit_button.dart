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
      child: Column(
        children: [
          Obx(
            () => GestureDetector(
              onTap: controller.saveTodo,
              child: Container(
                width: Get.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.lightGray3,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: controller.inputText.isNotEmpty
                          ? controller.selectedColor.withOpacity(0.2)
                          : Colors.white,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'add_goal_confirm'.tr,
                    style: content1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          controller.prevTodo == null
              ? const SizedBox.shrink()
              : GestureDetector(
                  onTap: controller.deleteTodo,
                  child: Container(
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.lightGray1,
                    ),
                    child: Center(
                      child: Text(
                        'delete_goal'.tr,
                        style: content1.copyWith(color: Colors.red),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
