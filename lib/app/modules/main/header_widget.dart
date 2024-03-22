import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
