import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/database/database.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/entity/user/social_user.dart';
import 'package:urassh_sns/repository/client_di.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';

final userRepositoryImplProvider = Provider((ref) => UserRepositoryImpl(
  ref.read(clientDIProvider),
));

class UserRepositoryImpl implements UserRepository {
  final Database _socialUserDatabase;

  UserRepositoryImpl(ClientDI di)
      : _socialUserDatabase = di.provideSocialUserDatabase();

  @override
  Future<void> registerUser(String uid) async {
    await _socialUserDatabase.insert(SocialUser(uid: uid).toJson());
  }

  @override
  Future<SocialUser> getUser(String uid) async {
    Map<String, dynamic> socialUserData = await _socialUserDatabase.get(uid);
    return SocialUser.fromJson(socialUserData);
  }
}