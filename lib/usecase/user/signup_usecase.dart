import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';
import 'package:urassh_sns/usecase/repository_di.dart';

final signupUseCaseProvider = Provider((ref) => SignupUserUseCase(
  ref.read(repositoryDIProvider),
));

class SignupUserUseCase {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  SignupUserUseCase(RepositoryDI di)
      : _userRepository = di.provideUserDatabase(),
        _authRepository = di.provideUserAuth();

  Future<void> execute(LoginUser loginUser) async {
    final String uid = await _authRepository.register(loginUser);
    await _userRepository.registerUser(uid);
  }
}
