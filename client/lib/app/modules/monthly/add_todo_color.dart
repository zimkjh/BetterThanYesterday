import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTodoColor extends GetView<MonthlyController> {
  final Color color;

  const AddTodoColor(this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.addTodo(color),
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 35,
        height: 35,
        alignment: Alignment.center,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
