import 'package:bty/app/modules/main/calendar_dayoftheweek_widget.dart';
import 'package:bty/app/modules/main/calendar_header_view.dart';
import 'package:bty/app/modules/main/calender_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderView extends StatelessWidget {
  static const double horizontalMargin = 6;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return SizedBox(
      width: Get.width,
      height: 64,
      child: Column(
        children: [
          SizedBox(height: 9),
          CalenderHeaderView(now),
          SizedBox(height: 10),
          CalendarDayOfTheWeekWidget(),
          CalenderGridView(),
        ],
      ),
    );
  }
}
