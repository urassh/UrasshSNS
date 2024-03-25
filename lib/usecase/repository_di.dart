import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/repository/auth/auth_repository_impl.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';
import 'package:urassh_sns/repository/user/user_repository_impl.dart';

final repositoryDIProvider = Provider((ref) =>
  RepositoryDI(
    userRepository: ref.read(userRepositoryImplProvider),
    authRepository: ref.read(authRepositoryImplProvider),
  )
);


class RepositoryDI {
  final UserRepository userRepository;
  final AuthRepository authRepository;

  RepositoryDI({
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