part of 'user_cubit.dart';

sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSuccess extends UserState {
  final List<User> users;
  final int? itemId;
  UserSuccess(this.users, {this.itemId});
}

final class UserFilteredState extends UserState {
  final List<User> filteredUsers;
  final int? itemId;
  UserFilteredState(this.filteredUsers, {this.itemId});
}

final class UserFailure extends UserState {
  final String errorMessage;
  UserFailure(this.errorMessage);
}
