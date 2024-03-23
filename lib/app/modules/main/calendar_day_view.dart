import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CalendarDayView extends StatelessWidget {
  final int day;

  const CalendarDayView(this.day);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 6),
        Container(
          width: 22,
          height: 22,
          decoration: const BoxDecoration(
            color: AppColors.gray2,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          day.toString(),
          style: plain2,
        ),
      ],
    );
  }
}
