import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/main/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CalendarDayOfTheWeekWidget extends StatelessWidget {
  const CalendarDayOfTheWeekWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 15,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: CalenderView.horizontalMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('MON', style: item3),
          Text('TUE', style: item3),
          Text('WED', style: item3),
          Text('THU', style: item3),
          Text('FRI', style: item3),
          Text('SAT', style: item3),
          Text('SUN', style: item3),
        ],
      ),
    );
  }
}
