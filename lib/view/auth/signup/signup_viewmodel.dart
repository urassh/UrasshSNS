import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/usecase/user/register_login_user_usecase.dart';

final signupViewModelProvider = Provider((ref) => SignupViewModel(
  ref.read(registerLoginUserUseCaseProvider),
));

class SignupViewModel {
  String stateText = "not...";

  final RegisterLoginUserUseCase registerLoginUserUseCase;
  SignupViewModel(this.registerLoginUserUseCase);

  Future<void> registerLoginUser() async {
    final LoginUser registerUser = LoginUser.defaultUID(
        username: "sample user",
        email: "sample@example.com",
        password: "password"
    );

    await registerLoginUserUseCase.execute(registerUser);
    stateText = "${registerUser.username} was registered!";
  }

  void flashMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}