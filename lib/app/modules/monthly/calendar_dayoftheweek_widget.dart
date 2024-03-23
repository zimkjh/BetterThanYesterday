import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/monthly/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarDayOfTheWeekWidget extends StatelessWidget {
  const CalendarDayOfTheWeekWidget();

  @override
  Widget build(BuildContext context) {
    final daysOfWeek = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];

    return Container(
      width: Get.width,
      height: 15,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: CalendarView.horizontalMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: daysOfWeek
            .map(
              (day) => Container(
                width: 40,
                alignment: Alignment.center,
                child: Text(day, style: plain3),
              ),
            )
            .toList(),
      ),
    );
  }
}
