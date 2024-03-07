import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'initial_title': 'This Week',
        },
        'ko': {
          'initial_title': '이번주',
        }
      };
}
