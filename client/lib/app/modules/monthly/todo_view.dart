import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoView extends StatelessWidget {
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
          const SizedBox(width: 21),
          Container(
            width: 21,
            height: 21,
            decoration: BoxDecoration(
              color: AppColors.gray2,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          const SizedBox(width: 10),
          Text(todo.title, style: plain1),
          const Spacer(),
          const Icon(Icons.more_horiz),
          const SizedBox(width: 22),
        ],
      ),
    );
  }
}
