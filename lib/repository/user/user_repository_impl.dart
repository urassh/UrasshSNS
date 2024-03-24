import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/database/database.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/repository/di/user_client_di.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';

final userRepositoryImplProvider = Provider((ref) => UserRepositoryImpl(
  ref.read(userClientDIProvider),
));

class UserRepositoryImpl implements UserRepository {
  final Database _loginUserDatabase;
  UserRepositoryImpl(UseClientDI di) : _loginUserDatabase = di.provideUserDatabase();

  @override
  Future<void> registerLoginUser(LoginUser loginUser) async {
    Map<String, dynamic> loginData = loginUser.toJson();
    await _loginUserDatabase.insert(loginData);
  }
}