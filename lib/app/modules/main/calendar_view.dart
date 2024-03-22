import 'package:bty/app/modules/main/calendar_dayoftheweek_widget.dart';
import 'package:bty/app/modules/main/calendar_header_view.dart';
import 'package:bty/app/modules/main/calendar_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderView extends StatelessWidget {
  static const double horizontalMargin = 6;

  const CalenderView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: const Column(
        children: [
          SizedBox(height: 9),
          CalenderHeaderView(),
          SizedBox(height: 10),
          CalendarDayOfTheWeekWidget(),
          CalenderGridView(),
        ],
      ),
    );
  }
}
