import 'package:bty/app/modules/add_goal/controller.dart';
import 'package:get/get.dart';

class LocalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => IntroController(),
    );
  }
}
