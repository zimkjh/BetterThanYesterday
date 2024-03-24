import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/core/utils/date_utils.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:bty/app/modules/monthly/day_painter.dart';
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
          Obx(() {
            final colors = _getColorsOfDay(
              controller.selectedDate,
              controller.doneTodos,
              controller.todos,
              day,
            );
            return colors.length >= 2
                ? SizedBox(
                    width: 21,
                    height: 21,
                    child: CustomPaint(
                      painter: DayPainter(colors),
                    ),
                  )
                : Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                      color: colors.firstOrNull ?? AppColors.gray2,
                      shape: BoxShape.circle,
                    ),
                  );
          }),
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

  List<Color> _getColorsOfDay(
    DateTime selectedDate,
    Map<DateTime, List<int>> doneTodos,
    List<Todo> todos,
    int day,
  ) {
    DateTime date = normalizeDate(selectedDate.copyWith(day: day));

    List<Color> colors = [];

    if (doneTodos.containsKey(date)) {
      List<int> todoIds = doneTodos[date]!;

      for (int todoId in todoIds) {
        Todo? foundTodo = todos.firstWhereOrNull((todo) => todo.id == todoId);
        if (foundTodo != null) {
          colors.add(foundTodo.color);
        }
      }
    }

    for (int i = 0; i < todos.length - colors.length; i++) {
      colors.add(AppColors.gray2);
    }

    colors.sort((a, b) {
      if (a == AppColors.gray2) return -1;
      if (b == AppColors.gray2) return 1;

      int indexA = todos.indexWhere((todo) => todo.color == a);
      int indexB = todos.indexWhere((todo) => todo.color == b);

      return indexA.compareTo(indexB);
    });

    return colors;
  }
}
