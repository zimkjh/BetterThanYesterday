import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'goal': 'Goal',
          'add_goal_confirm': 'Confirm',
          'delete_goal': 'Delete',
          'intro_cta_button': 'Submit',
          'this_week': 'This Week',
          'add_a_goal': 'Add a Goal',
        },
        'ko': {
          'goal': '목표',
          'add_goal_confirm': '저장',
          'delete_goal': '삭제',
          'intro_cta_button': '저장하기',
          'this_week': '이번주',
          'add_a_goal': '목표 추가하기',
        }
      };
}
