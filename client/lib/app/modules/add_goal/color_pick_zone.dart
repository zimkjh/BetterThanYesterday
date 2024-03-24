import 'package:bty/app/modules/add_goal/color_item_view.dart';
import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorPickZone extends GetView<AddGoalController> {
  const ColorPickZone();

  @override
  Widget build(BuildContext context) {
    const colors = AddGoalController.colors;

    return Column(
      children: [
        Container(
          width: Get.width,
          height: 50.0 * ((colors.length + 5) ~/ 6),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: colors.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              mainAxisExtent: 50,
            ),
            itemBuilder: (context, index) {
              return ColorItemView(colors[index]);
            },
          ),
        ),
      ],
    );
  }
}
