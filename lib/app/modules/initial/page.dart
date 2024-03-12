import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/initial/controller.dart';
import 'package:bty/app/modules/initial/goal_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(InitialController());

    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            SizedBox(
              width: Get.width,
              child: Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                height: 24,
                width: 24,
                child: Image.asset('assets/images/menu.png'),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 19),
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
