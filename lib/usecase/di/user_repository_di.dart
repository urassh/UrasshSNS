import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/repository/auth/auth_repository_impl.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';
import 'package:urassh_sns/repository/user/user_repository_impl.dart';

final userRepositoryDIProvider = Provider((ref) =>
  UserRepositoryDI(
    userRepository: ref.read(userRepositoryImplProvider),
    authRepository: ref.read(authRepositoryImplProvider),
  )
);


class UserRepositoryDI {
  final UserRepository userRepository;
  final AuthRepository authRepository;

  UserRepositoryDI({
    required this.userRepository,
    required this.authRepository,
  });

  UserRepository provideUserDatabase() {
    return userRepository;
  }

  AuthRepository provideUserAuth() {
    return authRepository;
  }
}