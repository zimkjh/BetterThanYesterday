import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoView extends GetView<MonthlyController> {
  final Todo todo;

  const TodoView(this.todo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 43,
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 11),
          GestureDetector(
            //todo app vibrate
            //todo localstorage save
            behavior: HitTestBehavior.opaque,
            onTap: () => controller.changeTodoDone(todo),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Obx(() {
                final isDone = controller.isTodoDoneOnDate(
                  todo.id,
                  controller.selectedDate,
                );
                return Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: isDone ? todo.color : AppColors.gray2,
                    borderRadius: BorderRadius.circular(7),
                  ),
                );
              }),
            ),
          ),
          Text(todo.title, style: plain1),
          const Spacer(),
          const Icon(Icons.more_horiz),
          const SizedBox(width: 22),
        ],
      ),
    );
  }
}
