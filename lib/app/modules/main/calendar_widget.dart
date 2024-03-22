import 'package:bty/app/modules/main/calendar_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return SizedBox(
      width: Get.width,
      height: 64,
      child: Column(
        children: [
          SizedBox(height: 9),
          CalenderHeaderWidget(now),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
