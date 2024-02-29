import 'package:bty/app/modules/intro/page.dart';
import 'package:bty/app/modules/main/page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: MainScreen.routeName,
      page: () => MainScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: IntroScreen.routeName,
      page: () => IntroScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
