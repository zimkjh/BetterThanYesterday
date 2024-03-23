import 'package:bty/app/core/theme/color_theme.dart';
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
      height: 2000,
      color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 2),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightGray1,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 2),
                    const Icon(Icons.abc_sharp),
                    const SizedBox(width: 2),
                    const Text('Goal 1'),
                    const SizedBox(width: 2),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.gray1,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: const Icon(Icons.plus_one),
                    ),
                    const SizedBox(width: 2),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
