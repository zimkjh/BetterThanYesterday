import 'package:flutter/material.dart';

class GoalDay extends StatelessWidget {
  final int index;
  final double width;

  GoalDay(this.index, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: width,
      height: 29,
      child: Text(index.toString()),
    );
  }
}
