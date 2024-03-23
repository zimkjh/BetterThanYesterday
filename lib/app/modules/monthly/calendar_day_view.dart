import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarDayView extends GetView<MonthlyController> {
  final int day;

  const CalendarDayView(this.day);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.setNowDay(day),
      child: Column(
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
          controller.now.day != day
              ? Text(
                  day.toString(),
                  style: plain2,
                )
              : Container(
                  width: day >= 10 ? 22 : 20,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Text(
                    day.toString(),
                    style: item2.copyWith(color: Colors.white),
                  ),
                ),
        ],
      ),
    );
  }
}
