import 'package:urassh_sns/entity/user/login_user.dart';

abstract class UserRepository {
  registerLoginUser(LoginUser loginUser);
}