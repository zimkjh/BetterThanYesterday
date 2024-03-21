import 'package:bty/app/modules/main/controller.dart';
import 'package:bty/app/modules/main/goal_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalList extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: controller.goals.length,
        itemBuilder: (BuildContext context, int index) {
          return GoalItem(controller.goals[index]);
        },
      ),
    );
  }
}
