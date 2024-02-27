import 'package:bty/intro/intro_screen.dart';
import 'package:bty/main/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());

    return Scaffold();
  }
}
