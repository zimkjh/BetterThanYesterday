import 'package:bty/app/bindings/local_binding.dart';
import 'package:bty/app/modules/add_goal/page.dart';
import 'package:bty/app/modules/initial/page.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.ADDGOAL,
      page: () => AddGoalPage(),
      transition: Transition.rightToLeft,
      binding: LocalBinding(),
    ),
  ];
}
