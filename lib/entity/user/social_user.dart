import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/social_user.freezed.dart';
part 'generated/social_user.g.dart';

@freezed
abstract class SocialUser with _$SocialUser {
  const factory SocialUser({
    @Default("guest") String username,
    required String uid,
  }) = _SocialUser;

  factory SocialUser.fromJson(Map<String, dynamic> json) => _$SocialUserFromJson(json);
}