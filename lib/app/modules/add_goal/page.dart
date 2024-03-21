import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/add_goal/cta_button.dart';
import 'package:bty/app/modules/add_goal/input_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 260),
          Text(
            'intro_write_goal'.tr,
            style: title2,
            textAlign: TextAlign.center,
          ),
          InputBox(),
          Spacer(),
          CtaButton(),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}