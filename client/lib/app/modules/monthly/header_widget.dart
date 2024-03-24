import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 18,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
    );
  }
}
