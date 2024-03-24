import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/usecase/user/register_login_user_usecase.dart';

final mainViewModelProvider = ChangeNotifierProvider((ref) => MainViewModel(
  ref.read(registerLoginUserUseCaseProvider),
));

class MainViewModel extends ChangeNotifier {
  int _counter = 0;
  final RegisterLoginUserUseCase registerLoginUserUseCase;
  MainViewModel(this.registerLoginUserUseCase);

  get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  Future<void> registerLoginUser() async {
    final LoginUser registerUser = LoginUser.defaultUID(
        username: "sample user",
        email: "sample@example.com",
        password: "password"
    );

    await registerLoginUserUseCase.execute(registerUser);
  }
}
