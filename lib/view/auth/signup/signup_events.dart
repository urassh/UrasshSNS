import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urassh_sns/entity/user/social_user.dart';
import 'package:urassh_sns/util/event.dart';

part 'generated/signup_events.freezed.dart';

@freezed
class SignupPageEvent with _$SignupPageEvent implements PageEvent {
  const factory SignupPageEvent.showProgress() = _ShowProgress;
  const factory SignupPageEvent.hideProgress() = _HideProgress;
  const factory SignupPageEvent.complete(SocialUser user) = _CompleteSignup;
  const factory SignupPageEvent.failed(Exception exception) = _FailedSignup;
}