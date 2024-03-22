import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/main/calendar_view.dart';
import 'package:bty/app/modules/main/controller.dart';
import 'package:bty/app/modules/main/goal_list.dart';
import 'package:bty/app/modules/main/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MainController());

    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            HeaderWidget(),
            const SizedBox(height: 20),
            const CalendarView(),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19),
              child: Text(
                'this_week'.tr,
                textAlign: TextAlign.left,
                style: title1,
              ),
            ),
            Expanded(
              child: GoalList(),
            ),
          ],
        ),
      ),
    );
  }
}
