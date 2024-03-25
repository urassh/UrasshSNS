import 'package:urassh_sns/util/list_extenstion.dart';

abstract interface class PageEvent {}

abstract interface class HasPageEvent<T extends PageEvent> {
  abstract final List<T> events;
}

extension HasPageEventExtension<T extends PageEvent> on HasPageEvent<T> {
  List<T> consumeEvent() {
    if (events.isEmpty) {
      return events;
    } else {
      return events.minus(0);
    }
  }
}
