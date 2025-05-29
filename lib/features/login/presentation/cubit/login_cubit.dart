import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  login(String username, String password) {
    if (username == "Username" && password == "Password") {
      emit(LoginSuccessState());
    } else {
      emit(LoginFailureState("username or password does not match"));
    }
  }
}
