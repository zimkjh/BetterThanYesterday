import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'this_week': 'This Week',
        },
        'ko': {
          'this_week': '이번주',
        }
      };
}
