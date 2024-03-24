import 'package:bty/app/core/utils/date_utils.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalProvider extends GetxService {
  static final box = GetStorage();

  static const _keyIsSavedFirstGoal = "is.saved.first.goal";
  static const _keyGoals = "goals";
  static const _keyDoneTodos = "doneTodos";

  final todos = RxList<Todo>([]);
  final doneTodos = RxMap<DateTime, List<int>>({});

  @override
  void onInit() {
    super.onInit();

    getTodoList();
    getDoneTodos();
  }

  bool getIsSavedFirstGoal() {
    box.writeIfNull(_keyIsSavedFirstGoal, false);
    return box.read(_keyIsSavedFirstGoal);
  }

  Future<void> setIsSavedFirstGoal(bool value) {
    return box.write(_keyIsSavedFirstGoal, value);
  }

  void getTodoList() {
    box.writeIfNull(_keyGoals, []);
    final list = box.read(_keyGoals) ?? [];
    todos.clear();
    todos.addAll(list.map<Todo>((e) => Todo.fromJson(e)));
  }

  Future<void> setTodoList(List<Todo> value) {
    return box.write(_keyGoals, value.map((e) => e.toJson()).toList());
  }

  Future<void> addTodoList(String inputText, Color color) {
    final maxId = todos.isNotEmpty
        ? todos.map((todo) => todo.id).reduce((a, b) => a > b ? a : b)
        : 0;
    todos.add(
      Todo(maxId + 1, inputText, color),
    );
    todos.sort((a, b) => a.color.value.compareTo(b.color.value));

    return box.write(_keyGoals, todos.map((e) => e.toJson()).toList());
  }

  Future<void> addDoneTodo(DateTime dateTime, int todoId) async {
    final normalizedDate = normalizeDate(dateTime);
    if (doneTodos[normalizedDate] == null) {
      doneTodos[normalizedDate] = [todoId];
    } else {
      var copy = doneTodos[normalizedDate]!.toList();
      copy += [todoId];
      doneTodos[normalizedDate] = copy;
    }
    saveDoneTodos();
  }

  Future<void> removeDoneTodo(DateTime dateTime, int todoId) async {
    final normalizedDate = normalizeDate(dateTime);

    if (doneTodos.containsKey(normalizedDate)) {
      var copy = doneTodos[normalizedDate]!.toList();

      if (copy.contains(todoId)) {
        copy.remove(todoId);
        doneTodos[normalizedDate] = copy;
      }
    }
    saveDoneTodos();
  }

  void saveDoneTodos() {
    final box = GetStorage();
    Map<String, List<int>> savableMap = {};

    doneTodos.forEach((key, value) {
      savableMap[key.toIso8601String()] = value;
    });

    box.write(_keyDoneTodos, savableMap);
  }

  void getDoneTodos() {
    final box = GetStorage();

    box.writeIfNull(_keyDoneTodos, {});
    Map<String, dynamic> storedMap = box.read(_keyDoneTodos);

    doneTodos.clear();
    storedMap.forEach((key, dynamic value) {
      List<int> castedValue = List<int>.from(value.map((item) => item as int));
      doneTodos[DateTime.parse(key)] = castedValue;
    });
  }
}
