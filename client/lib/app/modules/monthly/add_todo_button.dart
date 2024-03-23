import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTodoButton extends GetView<MonthlyController> {
  const AddTodoButton();

  final height = 35.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: height,
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        // onTap: controller.addTodo,
        onTap: () => debugPrint('wow'),
        child: Container(
          height: height,
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: AppColors.lightGray1,
            borderRadius: BorderRadius.circular(90),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 9),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(90),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: Colors.black.withOpacity(0.1),
                    )
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  size: 14,
                ),
              ),
              const SizedBox(width: 7),
              Text(
                'add_a_goal'.tr,
                style: item1,
              ),
              const SizedBox(width: 14),
            ],
          ),
        ),
      ),
    );
  }
}
