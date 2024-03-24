import 'package:bty/app/modules/monthly/add_todo_button.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:bty/app/modules/monthly/todo_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoZoneView extends GetView<MonthlyController> {
  const TodoZoneView();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return Column(
            children:
                controller.todoList.map((todo) => TodoView(todo)).toList(),
          );
        }),
        const SizedBox(height: 20),
        const AddTodoButton(),
        SizedBox(height: 20 + MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}
