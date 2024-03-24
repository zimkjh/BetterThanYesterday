import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/core/utils/date_utils.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarDayView extends GetView<MonthlyController> {
  final int day;

  const CalendarDayView(this.day);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => controller.setNowDay(day),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 6),
          Obx(
            () {
              final thisDateTime = controller.selectedDate.copyWith(day: day);
              final doneTodos =
                  controller.doneTodos[normalizeDate(thisDateTime)] ?? [];
              return Container(
                width: 22,
                height: 22,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.gray2,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Text(
                  (controller.todos.length - doneTodos.length).toString(),
                  style: item3.copyWith(color: Colors.white),
                ),
              );
            },
          ),
          const SizedBox(height: 3),
          controller.selectedDate.day != day
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
                    style: item3.copyWith(color: Colors.white),
                  ),
                ),
        ],
      ),
    );
  }
}
