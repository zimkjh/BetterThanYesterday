import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/modules/monthly/todo_view.dart';
import 'package:flutter/material.dart';

class TodoZoneView extends StatelessWidget {
  const TodoZoneView();
  @override
  Widget build(BuildContext context) {
    final todos = [
      Todo(0, 'Goal 1', Colors.red),
      Todo(0, 'Goal 2', Colors.blue),
    ];
    return Column(
      children: todos.map((todo) => TodoView(todo)).toList(),
    );
  }
}
