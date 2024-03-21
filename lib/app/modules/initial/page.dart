import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/initial/controller.dart';
import 'package:bty/app/modules/initial/goal_add_button.dart';
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
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Container(
                  width: Get.width,
                  height: 38,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 20,
                    width: 20,
                    child: Icon(Icons.settings_outlined),
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
            Positioned(
              right: 24,
              bottom: MediaQuery.of(context).padding.bottom,
              child: GoalAddButton(),
            ),
          ],
        ),
      ),
    );
  }
}
