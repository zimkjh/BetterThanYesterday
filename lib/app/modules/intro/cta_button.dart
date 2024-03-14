import 'package:bty/app/core/theme/text_theme.dart';
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
            'intro_cta_button'.tr,
            style: title2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
