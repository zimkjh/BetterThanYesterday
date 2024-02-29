import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    super.key,
  });

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
        ),
      ),
    );
  }
}
