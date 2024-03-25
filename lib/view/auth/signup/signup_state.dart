import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urassh_sns/util/event.dart';
import 'package:urassh_sns/view/auth/signup/signup_events.dart';

part 'generated/signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState implements HasPageEvent<SignupPageEvent> {
  const factory SignupState({
    @Default("") String email,
    @Default("") String password,
    @Default([]) List<SignupPageEvent> events,
  }) = _SignupState;
}