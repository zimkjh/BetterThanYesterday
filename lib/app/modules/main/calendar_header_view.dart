import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarHeaderView extends StatelessWidget {
  const CalendarHeaderView();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return SizedBox(
      width: Get.width,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          Text(
            '${DateFormat('MMM').format(now)} ${now.year}',
            style: item1,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, right: 5),
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          const Text('3'),
          const Spacer(),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
          const SizedBox(width: 2),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          const SizedBox(width: 7),
          Container(
            width: 36,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.lightGray1,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Text(
              'M',
              style: item2,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
