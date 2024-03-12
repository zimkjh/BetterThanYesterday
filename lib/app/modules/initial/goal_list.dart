import 'package:bty/app/modules/initial/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalList extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.red,
          height: 200,
        );
      },
    );
  }
}
