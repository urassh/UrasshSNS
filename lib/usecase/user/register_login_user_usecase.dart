import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';
import 'package:urassh_sns/usecase/di/user_repository_di.dart';

final registerLoginUserUseCaseProvider = Provider((ref) => RegisterLoginUserUseCase(
  ref.read(userRepositoryDIProvider),
));

class RegisterLoginUserUseCase {
  final UserRepository _userRepository;

  RegisterLoginUserUseCase(UserRepositoryDI di) : _userRepository = di.provideUserDatabase();

  Future<void> execute(LoginUser loginUser) async {
    await _userRepository.registerLoginUser(loginUser);
  }
}
