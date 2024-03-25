import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/login_user.freezed.dart';
part 'generated/login_user.g.dart';

@freezed
abstract class LoginUser with _$LoginUser {
  const factory LoginUser({
    required String email,
    required String password,
  }) = _LoginUser;

  factory LoginUser.fromJson(Map<String, dynamic> json) => _$LoginUserFromJson(json);

  factory LoginUser.defaultUID({
    required String email,
    required String password,
  }) {
    return LoginUser(
      email: email,
      password: password,
    );
  }
}