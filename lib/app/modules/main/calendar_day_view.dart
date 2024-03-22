import 'package:flutter/material.dart';

class CalendarDayView extends StatelessWidget {
  final int day;

  const CalendarDayView(this.day);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text('$day'),
      ),
    );
  }
}
