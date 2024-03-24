import 'package:bty/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderView extends StatelessWidget {
  const HeaderView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 42,
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => Get.back(),
                behavior: HitTestBehavior.opaque,
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'goal'.tr,
                style: heavy1,
              ),
              const Spacer(),
              const SizedBox(width: 54),
            ],
          ),
        ],
      ),
    );
  }
}
