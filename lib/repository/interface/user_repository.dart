import 'package:urassh_sns/entity/user/social_user.dart';

abstract class UserRepository {
  registerUser(String uid);
  Future<SocialUser> getUser(String uid);
}