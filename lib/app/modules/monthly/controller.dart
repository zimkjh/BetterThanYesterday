import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthlyController extends GetxController {
  final localProvider = LocalProvider();

  final _goals = Rx<List<Todo>>([]);
  List<Todo> get goals => _goals.value;

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
}
