import 'package:get/get.dart';

class IntroController extends GetxController {
  final _inputText = ''.obs;
  get inputText => _inputText.value;
  set inputText(value) => _inputText.value = value;
}
