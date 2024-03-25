import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/view/auth/signup/signup_viewmodel.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupViewModel = ref.watch(signupViewModelProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            signupViewModel.stateText,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TextButton (
            onPressed: () async {
              await signupViewModel.registerLoginUser();
              signupViewModel.flashMessage(context, signupViewModel.stateText);
            },
            child: const Text("Register"),
          ),
        ],
      ),
    );
  }
}