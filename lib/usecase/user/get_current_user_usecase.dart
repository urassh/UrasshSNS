import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/social_user.dart';
import 'package:urassh_sns/repository/interface/auth_repository.dart';
import 'package:urassh_sns/repository/interface/user_repository.dart';
import 'package:urassh_sns/usecase/repository_di.dart';

final getCurrentUserUsecaseProvider = Provider((ref) => GetCurrentUserUseCase(
  ref.read(repositoryDIProvider),
));

class GetCurrentUserUseCase {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  GetCurrentUserUseCase(RepositoryDI di)
      : _userRepository = di.provideUserDatabase(),
        _authRepository = di.provideUserAuth();

  Future<SocialUser?> execute() async {
    final uid = _authRepository.getCurrentUserID();
    if (uid == null) return null;

    return await _userRepository.getUser(uid);
  }
}