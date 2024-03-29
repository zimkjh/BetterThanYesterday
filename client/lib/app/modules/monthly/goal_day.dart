import 'package:bty/app/core/theme/color_theme.dart';
import 'package:flutter/material.dart';

class GoalDay extends StatelessWidget {
  final int index;
  final double width;

  const GoalDay(this.index, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGray1,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 4,
          )
        ],
      ),
      width: width,
      height: 29,
    );
  }
}
