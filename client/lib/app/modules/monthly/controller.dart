import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthlyController extends GetxController {
  final localProvider = LocalProvider();

  final _goals = Rx<List<Todo>>([]);
  List<Todo> get goals => _goals.value;

  final _now = DateTime.now().obs;
  DateTime get now => _now.value;
  set now(DateTime value) => _now.value = value;

  @override
  Future<void> onInit() async {
    super.onInit();

    _goals.value = localProvider.getGoals();

    if (goals.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.toNamed(Routes.ADDGOAL);
      });
    }
  }

  void goToPrevMonth() {
    DateTime prevMonth;

    if (now.month == 1) {
      prevMonth = DateTime(now.year - 1, 12, 31);
    } else {
      DateTime firstDayOfCurrentMonth = DateTime(now.year, now.month, 1);
      prevMonth = DateTime(
        now.year,
        now.month - 1,
        firstDayOfCurrentMonth.subtract(const Duration(days: 1)).day,
      );
    }

    now = prevMonth;
  }

  void goToNextMonth() {
    DateTime nextMonth;

    if (now.month == 12) {
      nextMonth = DateTime(now.year + 1, 1, 1);
    } else {
      nextMonth = DateTime(now.year, now.month + 1, 1);
    }

    now = nextMonth;
  }

  void setNowDay(int day) {
    now = now.copyWith(day: day);
  }

  void addTodo() {
    debugPrint('he');
  }
}
