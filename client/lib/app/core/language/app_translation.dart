import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'intro_write_goal':
              'Write the name of the challenge\nyou\'d like to stick with',
          'intro_cta_button': 'Submit',
          'this_week': 'This Week',
          'add_a_goal': 'Add a Goal',
        },
        'ko': {
          'intro_write_goal': '자주 실천할 목표를 적어주세요',
          'intro_cta_button': '저장하기',
          'this_week': '이번주',
          'add_a_goal': '목표 추가하기',
        }
      };
}
