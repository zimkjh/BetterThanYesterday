import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LocalProvider {
  static final _box = GetStorage();

  static const _keyIsSavedFirstGoal = "is.saved.first.goal";

  LocalProvider() {
    debugPrint('localprovider init');
  }

  bool getIsSavedFirstGoal() {
    return _box.read(_keyIsSavedFirstGoal);
  }

  Future<void> setIsSavedFirstGoal(bool value) {
    return _box.write(_keyIsSavedFirstGoal, value);
  }
}
