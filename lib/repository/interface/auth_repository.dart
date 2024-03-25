import 'package:urassh_sns/entity/user/login_user.dart';

abstract class AuthRepository {
  Future<String> register(LoginUser loginData);
  String? getCurrentUserID();
}
