import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalenderHeaderView extends StatelessWidget {
  const CalenderHeaderView();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return SizedBox(
      width: Get.width,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Text(
            '${DateFormat('MMM').format(now)} ${now.year}',
            style: item1,
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 5),
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          Text('3'),
          Spacer(),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
          SizedBox(width: 2),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          SizedBox(width: 7),
          Container(
            width: 36,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.lightGray1,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              'M',
              style: item2,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
