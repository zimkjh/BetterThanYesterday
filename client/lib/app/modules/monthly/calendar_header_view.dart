import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/monthly/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarHeaderView extends GetView<MonthlyController> {
  const CalendarHeaderView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          Obx(() {
            final now = controller.now;
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${DateFormat('MMM').format(now)} ${now.year}',
                  style: item2,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8, right: 5),
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                //todo
                const Text('3'),
              ],
            );
          }),
          const Spacer(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: controller.goToPrevMonth,
            child: Container(
              width: 30,
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
            ),
          ),
          const SizedBox(width: 2),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: controller.goToNextMonth,
            child: Container(
              width: 30,
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
