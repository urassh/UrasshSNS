import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/repository/client_di.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';

final authRepositoryImplProvider = Provider((ref) => AuthRepositoryImpl(
  ref.read(clientDIProvider),
));

class AuthRepositoryImpl implements AuthRepository {
  final Auth _auth;

  AuthRepositoryImpl(ClientDI di) : _auth = di.provideUserAuth();

  @override
  String? getCurrentUserID() {
    return _auth.getCurrentUserID();
  }

  @override
  Future<String> register(LoginUser loginUser) async {
    return await _auth.register(loginUser.toJson());
  }
}