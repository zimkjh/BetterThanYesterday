import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputBox extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(33),
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          maxLines: null,
          minLines: null,
          expands: true,
          onChanged: (value) {
            controller.inputText = value;
          },
        ),
      ),
    );
  }
}
