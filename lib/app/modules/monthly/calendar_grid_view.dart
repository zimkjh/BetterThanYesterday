import 'package:bty/app/modules/monthly/calendar_day_view.dart';
import 'package:bty/app/modules/monthly/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarGridView extends StatelessWidget {
  final DateTime now;

  const CalendarGridView(this.now);

  List<Widget> _buildCalendarDays() {
    List<Widget> dayWidgets = [];

    DateTime firstOfMonth = DateTime(now.year, now.month, 1);
    DateTime lastOfMonth = DateTime(now.year, now.month + 1, 0);

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
    final calendardays = _buildCalendarDays();
    const aspectRatio = 1.05;
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
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          childAspectRatio: aspectRatio,
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
