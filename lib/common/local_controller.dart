import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalController {
  static const _keyIsSavedFirstGoal = "is.saved.first.goal";
  late SharedPreferences _prefs;

  LocalController(SharedPreferences prefs) {
    _prefs = prefs;
  }

  Future<void> init() async {
    debugPrint('hey');
  }

  bool getIsSavedFirstGoal() {
    return _prefs.getBool(_keyIsSavedFirstGoal) ?? false;
  }

  Future<bool> setIsSavedFirstGoal(bool value) {
    return _prefs.setBool(_keyIsSavedFirstGoal, value);
  }
}
