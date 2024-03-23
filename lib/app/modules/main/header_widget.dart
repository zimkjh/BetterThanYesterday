import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 38,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        alignment: Alignment.centerRight,
        height: 20,
        width: 20,
        child: const Icon(Icons.settings_outlined),
      ),
    );
  }
}
