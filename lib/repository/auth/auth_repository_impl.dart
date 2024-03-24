import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';
import 'package:urassh_sns/repository/di/user_client_di.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';

final authRepositoryImplProvider = Provider((ref) => AuthRepositoryImpl(
  ref.read(userClientDIProvider),
));

class AuthRepositoryImpl implements AuthRepository {
  final Auth _auth;

  AuthRepositoryImpl(UseClientDI di) : _auth = di.provideUserAuth();
}