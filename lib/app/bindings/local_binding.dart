import 'package:bty/app/modules/intro/controller.dart';
import 'package:get/get.dart';

class LocalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => IntroController(),
    );
  }
}
