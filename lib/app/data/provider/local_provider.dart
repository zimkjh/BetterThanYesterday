import 'package:bty/app/data/model/goal.dart';
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

  List<Goal> getGoals() {
    box.writeIfNull(_keyGoals, []);
    final list = box.read(_keyGoals) ?? [];
    return list.map<Goal>((e) => Goal.fromJson(e)).toList();
  }

  Future<void> setGoals(List<Goal> value) {
    return box.write(_keyGoals, value.map((e) => e.toJson()).toList());
  }
}
