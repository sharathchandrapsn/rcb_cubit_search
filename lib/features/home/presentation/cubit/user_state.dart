part of 'user_cubit.dart';

sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSuccess extends UserState {
  final List<User> users;
  UserSuccess(this.users);
}

final class UserFilteredState extends UserState {
  final List<User> filteredUsers;
  UserFilteredState(this.filteredUsers);
}

final class UserFailure extends UserState {
  final String errorMessage;
  UserFailure(this.errorMessage);
}
