import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'initial_title': 'My\nChallenges',
        },
        'ko': {
          'initial_title': '내 목표 정하기',
        }
      };
}
