import 'package:bty/app/core/theme/color_theme.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalAddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
          color: ColorTheme.green2,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }

  void onTapButton() {
    Get.toNamed(Routes.ADDGOAL);
  }
}
