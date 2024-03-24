import 'package:bty/app/modules/add_goal/color_pick_zone.dart';
import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:bty/app/modules/add_goal/header_view.dart';
import 'package:bty/app/modules/add_goal/input_box.dart';
import 'package:bty/app/modules/add_goal/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(AddGoalController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const HeaderView(),
          const SizedBox(height: 13),
          const InputBox(),
          const SizedBox(height: 25),
          const ColorPickZone(),
          const SubmitButton(),
        ],
      ),
    );
  }
}
