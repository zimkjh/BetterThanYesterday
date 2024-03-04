import 'package:bty/app/core/theme/text_theme.dart';
import 'package:bty/app/modules/initial/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(InitialController());

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Image.asset('assets/images/menu.png'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'initial_title'.tr,
              textAlign: TextAlign.left,
              style: title1,
            ),
          ),
        ],
      ),
    );
  }
}
