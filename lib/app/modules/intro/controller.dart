import 'package:bty/app/data/provider/local_provider.dart';
import 'package:bty/app/routes/app_routes.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final _inputText = ''.obs;
  get inputText => _inputText.value;
  set inputText(value) => _inputText.value = value;

  final localProvider = LocalProvider();

  void onClickCta() {
    localProvider.setIsSavedFirstGoal(true);
    Get.toNamed(Routes.INITIAL);
  }
}
