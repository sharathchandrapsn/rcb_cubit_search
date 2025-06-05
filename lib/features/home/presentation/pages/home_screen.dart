import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rcb_cubit_search/core/widgets/drawer_widget.dart';
import 'package:rcb_cubit_search/features/home/domain/user.dart';
import '../cubit/user_cubit.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithDrawer(
      appbarTitle: "RCB Players",
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search by name...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) =>
                  context.read<UserCubit>().filterUsers(value),
            ),
          ),
          Expanded(
            child: BlocBuilder<UserCubit, UserState>(
              builder: (context, state) {
                if (state is UserLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is UserSuccess) {
                  return buildListView(state.users, state);
                } else if (state is UserFilteredState) {
                  return buildListView(state.filteredUsers, state);
                } else if (state is UserFailure) {
                  return Center(child: Text(state.errorMessage));
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListView(List<User> users, var state) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Container(
          color: state.itemId == index
              ? Colors.transparent.withOpacity(0.2)
              : Colors.transparent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(user.imageUrl)),
            title: Text(
              user.name,
            ),
            subtitle: Text(user.country),
            onTap: () {
              // context.read<UserCubit>().selectItem(index);
              context.push('/user', extra: user);
            },
          ),
        );
      },
    );
  }
}
