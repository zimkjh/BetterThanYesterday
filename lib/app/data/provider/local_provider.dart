import 'package:bty/app/data/model/todo.dart';
import 'package:get_storage/get_storage.dart';

class LocalProvider {
  static final box = GetStorage();

  static const _keyIsSavedFirstGoal = "is.saved.first.goal";
  static const _keyGoals = "goals";

  LocalProvider();

  bool getIsSavedFirstGoal() {
    box.writeIfNull(_keyIsSavedFirstGoal, false);
    return box.read(_keyIsSavedFirstGoal);
  }

  Future<void> setIsSavedFirstGoal(bool value) {
    return box.write(_keyIsSavedFirstGoal, value);
  }

  List<Todo> getGoals() {
    box.writeIfNull(_keyGoals, []);
    final list = box.read(_keyGoals) ?? [];
    return list.map<Todo>((e) => Todo.fromJson(e)).toList();
  }

  Future<void> setGoals(List<Todo> value) {
    return box.write(_keyGoals, value.map((e) => e.toJson()).toList());
  }
}
