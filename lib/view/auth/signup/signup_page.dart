import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/view/auth/signup/signup_events.dart';
import 'package:urassh_sns/view/auth/signup/signup_viewmodel.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _SignupPageState();
  }
}

class _SignupPageState extends ConsumerState<SignupPage> {

  void _handleEvent() {
    ref.listen<List<SignupPageEvent>>(
        signupViewModelProvider.select((value) => value.events),
        (_, next) async {
          if(next.isEmpty) return;

          next.first.when(
              showProgress: () {
                print("showProgress");
              },
              hideProgress: () {
                print("hideProgress");
              },
              complete: (loginUser) {
                final snackBar = SnackBar(
                  content: Text("Sign up completed. Welcome! ${loginUser.username}"),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              failed: (exception) {
                print(exception.toString());
              },
          );

          ref.read(signupViewModelProvider.notifier).onConsumeEvent();
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final signupViewModel = ref.read(signupViewModelProvider.notifier);
    _handleEvent();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign up",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TextButton (
            onPressed: () => signupViewModel.onSignupButtonClicked(),
            child: const Text("Register"),
          ),
        ],
      ),
    );
  }
}