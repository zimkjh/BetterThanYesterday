import 'package:bty/app/modules/monthly/calendar_view.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:bty/app/modules/monthly/todo_zone_view.dart';
import 'package:bty/app/modules/monthly/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthlyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MonthlyController());

    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            const HeaderWidget(),
            const SizedBox(height: 10),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CalendarView(),
                    SizedBox(height: 38),
                    TodoZoneView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
