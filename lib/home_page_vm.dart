
// ViewModel

import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 관리자
final countProvider = NotifierProvider<CountVM, int>(() {
  print("창고 만들어짐");
  return CountVM();
});

// 창고
class CountVM extends Notifier<int> {
  @override
  int build() {
    return 20; // 창고가 관리할 데이터
  }

  void add() {
    state = state + 1;
  }
}