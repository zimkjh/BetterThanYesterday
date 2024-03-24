import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputBox extends GetView<AddGoalController> {
  const InputBox();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Obx(
        () => Container(
          height: 42,
          padding: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: controller.selectedColor,
                width: 2.0,
              ),
            ),
          ),
          child: TextField(
            controller: controller.textEditingController,
            focusNode: controller.focusNode,
            style: item2.copyWith(
              fontSize: 15,
              color: controller.selectedColor,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            maxLines: 1,
            onChanged: (value) => controller.onChangeInputText(value),
          ),
        ),
      ),
    );
  }
}
