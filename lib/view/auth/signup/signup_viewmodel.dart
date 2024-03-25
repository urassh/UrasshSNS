import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/entity/user/login_user.dart';
import 'package:urassh_sns/entity/user/social_user.dart';
import 'package:urassh_sns/exception/NotFoundedDataException.dart';
import 'package:urassh_sns/exception/insert_database_exception.dart';
import 'package:urassh_sns/exception/signup_auth_exception.dart';
import 'package:urassh_sns/usecase/user/get_current_user_usecase.dart';
import 'package:urassh_sns/usecase/user/signup_usecase.dart';
import 'package:urassh_sns/util/event.dart';
import 'package:urassh_sns/util/state_notifier.dart';
import 'package:urassh_sns/view/auth/signup/signup_events.dart';
import 'package:urassh_sns/view/auth/signup/signup_state.dart';

final signupViewModelProvider = StateNotifierProvider.autoDispose<SignupViewModel, SignupState>((ref) => SignupViewModel(
  const SignupState(),
  ref.read(signupUseCaseProvider),
  ref.read(getCurrentUserUsecaseProvider)));

class SignupViewModel extends HasEventStateNotifier<SignupState> {
  final SignupUserUseCase _signupUserUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  SignupViewModel(super.state, this._signupUserUseCase, this._getCurrentUserUseCase);

  void onSignupButtonClicked() async {
    state = state.copyWith(events: state.events + [const SignupPageEvent.showProgress()]);

    final LoginUser registerUser = LoginUser.defaultUID(
        email: "urassh@example.com",
        password: "password"
    );

    try {
      await _signupUserUseCase.execute(registerUser);
      final SocialUser? user = await _getCurrentUserUseCase.execute();
      state = state.copyWith(events: state.events + [SignupPageEvent.complete(user!)]);
    } on InsertDatabaseException catch (e) {
      state = state.copyWith(events: state.events + [SignupPageEvent.failed(e)]);
    } on SignupAuthException catch (e) {
      state = state.copyWith(events: state.events + [SignupPageEvent.failed(e)]);
    } on NotFoundedDataException catch (e) {
      state = state.copyWith(events: state.events + [SignupPageEvent.failed(e)]);
    } catch (e) {
      state = state.copyWith(events: state.events + [SignupPageEvent.failed(Exception(e))]);
    }

    state = state.copyWith(events: state.events + [const SignupPageEvent.hideProgress()]);
  }

  void onEmailChanged({
    required String email,
  }) {
    state = state.copyWith(email: email);
  }

  void onPasswordChanged({
    required String password,
  }) {
    state = state.copyWith(password: password);
  }

  void flashMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  void onConsumeEvent() {
    state = state.copyWith(events: state.consumeEvent());
  }
}