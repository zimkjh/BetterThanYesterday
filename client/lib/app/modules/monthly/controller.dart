import 'package:bty/app/core/utils/date_utils.dart';
import 'package:bty/app/data/model/todo.dart';
import 'package:bty/app/data/provider/local_provider.dart';
import 'package:get/get.dart';

class MonthlyController extends GetxController {
  late LocalProvider localProvider;

  RxList<Todo> get todos => localProvider.todos;
  RxMap<DateTime, List<int>> get doneTodos => localProvider.doneTodos;

  final _selectedDate = DateTime.now().obs;
  DateTime get selectedDate => _selectedDate.value;
  set selectedDate(DateTime value) => _selectedDate.value = value;

  @override
  void onInit() {
    super.onInit();
    localProvider = Get.find<LocalProvider>();
  }

  void goToPrevMonth() {
    DateTime prevMonth;

    if (selectedDate.month == 1) {
      prevMonth = DateTime(selectedDate.year - 1, 12, 31);
    } else {
      DateTime firstDayOfCurrentMonth =
          DateTime(selectedDate.year, selectedDate.month, 1);
      prevMonth = DateTime(
        selectedDate.year,
        selectedDate.month - 1,
        firstDayOfCurrentMonth.subtract(const Duration(days: 1)).day,
      );
    }

    selectedDate = prevMonth;
  }

  void goToNextMonth() {
    DateTime nextMonth;

    if (selectedDate.month == 12) {
      nextMonth = DateTime(selectedDate.year + 1, 1, 1);
    } else {
      nextMonth = DateTime(selectedDate.year, selectedDate.month + 1, 1);
    }

    selectedDate = nextMonth;
  }

  void setNowDay(int day) {
    selectedDate = selectedDate.copyWith(day: day);
  }

  Future<void> changeTodoDone(Todo todo) async {
    if (isTodoDoneOnDate(todo.id, selectedDate)) {
      await localProvider.removeDoneTodo(selectedDate, todo.id);
    } else {
      await localProvider.addDoneTodo(selectedDate, todo.id);
    }
  }

  bool isTodoDoneOnDate(int todoId, DateTime date) {
    DateTime normalizedDate = normalizeDate(date);
    return doneTodos.containsKey(normalizedDate) &&
        doneTodos[normalizedDate]!.contains(todoId);
  }

  int countDoneTodosInMonth(int year, int month) {
    int totalCount = 0;

    doneTodos.forEach((date, todos) {
      if (date.year == year && date.month == month) {
        totalCount += todos.length;
      }
    });

    return totalCount;
  }
}
