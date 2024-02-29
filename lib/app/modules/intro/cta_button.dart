import 'package:bty/app/modules/intro/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CtaButton extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.onClickCta,
      child: Container(
        width: Get.width,
        height: 55,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(28),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            'Submit',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
      ),
    );
  }
}
