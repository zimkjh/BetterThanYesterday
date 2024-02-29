import 'package:bty/app/modules/initial/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    Get.put(InitialController());

    return Scaffold();
  }
}
