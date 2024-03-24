import 'package:bty/app/data/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalProvider extends GetxController {
  static final box = GetStorage();

  static const _keyIsSavedFirstGoal = "is.saved.first.goal";
  static const _keyGoals = "goals";

  final todoList = RxList<Todo>([]);

  @override
  void onInit() {
    super.onInit();

    todoList.addAll(getTodoList());
  }

  bool getIsSavedFirstGoal() {
    box.writeIfNull(_keyIsSavedFirstGoal, false);
    return box.read(_keyIsSavedFirstGoal);
  }

  Future<void> setIsSavedFirstGoal(bool value) {
    return box.write(_keyIsSavedFirstGoal, value);
  }

  List<Todo> getTodoList() {
    box.writeIfNull(_keyGoals, []);
    final list = box.read(_keyGoals) ?? [];
    return list.map<Todo>((e) => Todo.fromJson(e)).toList();
  }

  Future<void> setTodoList(List<Todo> value) {
    return box.write(_keyGoals, value.map((e) => e.toJson()).toList());
  }

  Future<void> addTodoList(String inputText, Color color) {
    final maxId = todoList.isNotEmpty
        ? todoList.map((todo) => todo.id).reduce((a, b) => a > b ? a : b)
        : 0;
    todoList.add(
      Todo(maxId + 1, inputText, color),
    );
    return box.write(_keyGoals, todoList.map((e) => e.toJson()).toList());
  }
}
