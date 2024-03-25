import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'generated/login_user.freezed.dart';
part 'generated/login_user.g.dart';

@freezed
abstract class LoginUser with _$LoginUser {
  const factory LoginUser({
    required String username,
    required String email,
    required String password,
    required String uid,
  }) = _LoginUser;

  factory LoginUser.fromJson(Map<String, dynamic> json) => _$LoginUserFromJson(json);

  factory LoginUser.defaultUID({
    required String username,
    required String email,
    required String password,
  }) {
    return LoginUser(
      username: username,
      email: email,
      password: password,
      uid: const Uuid().v4(),
    );
  }
}