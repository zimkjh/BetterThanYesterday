import 'package:bty/app/modules/main/calendar_day_view.dart';
import 'package:bty/app/modules/main/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarGridView extends StatelessWidget {
  const CalendarGridView();
  List<Widget> _buildCalendarDays(DateTime currentDate) {
    List<Widget> dayWidgets = [];

    DateTime firstOfMonth = DateTime(currentDate.year, currentDate.month, 1);
    DateTime lastOfMonth = DateTime(currentDate.year, currentDate.month + 1, 0);

    int startPadding = (firstOfMonth.weekday - 1) % 7;

    for (int i = 0; i < startPadding; i++) {
      dayWidgets.add(Container());
    }

    for (int i = 1; i <= lastOfMonth.day; i++) {
      dayWidgets.add(
        CalendarDayView(i),
      );
    }

    return dayWidgets;
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    final calendardays = _buildCalendarDays(now);
    const aspectRatio = 1.1;
    final itemHeight =
        (Get.width - CalendarView.horizontalMargin * 2) / 7 / aspectRatio;
    var totalHeight = itemHeight * 4;

    if (calendardays.length > 28) {
      totalHeight = itemHeight * 5;
    } else if (calendardays.length > 35) {
      totalHeight = itemHeight * 6;
    }

    return Container(
      alignment: Alignment.topCenter,
      width: Get.width - CalendarView.horizontalMargin * 2,
      height: totalHeight,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          childAspectRatio: 1.1,
        ),
        padding: EdgeInsets.zero,
        itemCount: calendardays.length,
        itemBuilder: ((context, index) {
          return calendardays[index];
        }),
      ),
    );
  }
}
