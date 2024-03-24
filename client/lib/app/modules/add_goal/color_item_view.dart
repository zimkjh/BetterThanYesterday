import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorItemView extends GetView<AddGoalController> {
  final Color color;

  const ColorItemView(this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onSelectColor(color),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 29,
              height: 29,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            Obx(() => Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: color == controller.selectedColor
                          ? AppColors.lightGray2
                          : Colors.white,
                      width: 2,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
