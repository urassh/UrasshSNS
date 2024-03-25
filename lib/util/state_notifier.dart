import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/util/event.dart';

abstract class HasEventStateNotifier<T extends HasPageEvent> extends StateNotifier<T> {
  HasEventStateNotifier(T state) : super(state);

  void onConsumeEvent();
}
