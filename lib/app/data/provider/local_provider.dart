import 'package:get_storage/get_storage.dart';

class LocalProvider {
  static final box = GetStorage();

  static const _keyIsSavedFirstGoal = "is.saved.first.goal";

  LocalProvider();

  bool getIsSavedFirstGoal() {
    box.writeIfNull(_keyIsSavedFirstGoal, false);
    return box.read(_keyIsSavedFirstGoal);
  }

  Future<void> setIsSavedFirstGoal(bool value) {
    return box.write(_keyIsSavedFirstGoal, value);
  }
}
