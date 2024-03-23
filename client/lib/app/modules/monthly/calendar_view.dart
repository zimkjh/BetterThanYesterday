import 'package:bty/app/modules/monthly/calendar_dayoftheweek_widget.dart';
import 'package:bty/app/modules/monthly/calendar_header_view.dart';
import 'package:bty/app/modules/monthly/calendar_grid_view.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendarView extends GetView<MonthlyController> {
  static const double horizontalMargin = 5;

  const CalendarView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          const SizedBox(height: 9),
          const CalendarHeaderView(),
          const SizedBox(height: 10),
          const CalendarDayOfTheWeekWidget(),
          Obx(() => CalendarGridView(controller.now)),
        ],
      ),
    );
  }
}
