import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rcb_cubit_search/features/home/data/user_repository_impl.dart';
import 'package:rcb_cubit_search/features/home/domain/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepositoryImpl) : super(UserInitial());
  final UserRepositoryImpl userRepositoryImpl;

  List<User> users = [];

  Future<void> fetchUsers() async {
    emit(UserLoading());
    try {
      users = await userRepositoryImpl.fetchUsers();
      log("users1 are:: $users");
      emit(UserSuccess(users));
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }

  void filterUsers(String name) {
    try {
      log("users are:: ${users.length}");
      // users = await userRepositoryImpl.fetchUsers();
      if (name.isEmpty) {
        emit(UserSuccess(users));
      } else {
        final filteredUsers = users
            .where(
                (user) => user.name.toLowerCase().contains(name.toLowerCase()))
            .toList();
        log("list of users are:: ${filteredUsers.length}");
        emit(UserFilteredState(filteredUsers));
      }
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }
}
