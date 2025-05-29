part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitialState extends LoginState {
  LoginInitialState();
}

final class LoginSuccessState extends LoginState {}

final class LoginFailureState extends LoginState {
  String errorMessage;
  LoginFailureState(this.errorMessage);
}
