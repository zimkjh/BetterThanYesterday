import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/data/model/goal.dart';
import 'package:bty/app/modules/initial/goal_day.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalItem extends StatelessWidget {
  final Goal goal;

  GoalItem(this.goal);

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 21.0;
    const itemCount = 7;
    const itemPadding = 3.0;
    final itemWidth = (Get.width - horizontalPadding * 2) / itemCount;

    return Container(
      width: Get.width,
      height: 82,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: itemPadding * 2),
            child: Text(
              goal.title,
              style: content1,
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: List.generate(
              itemCount,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: itemPadding),
                  child: GoalDay(index, itemWidth - 2 * itemPadding),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
