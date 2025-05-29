import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rcb_cubit_search/features/home/data/user_repository_impl.dart';
import 'package:rcb_cubit_search/features/home/presentation/cubit/user_cubit.dart';
import 'package:rcb_cubit_search/features/home/presentation/pages/home_screen.dart';
import 'package:rcb_cubit_search/features/home/presentation/pages/user_details_screen.dart';
import '../domain/user.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => BlocProvider(
          create: (context) => UserCubit(UserRepositoryImpl())..fetchUsers(),
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/user',
        builder: (context, state) {
          final user = state.extra as User;
          return UserDetailScreen(user: user);
        },
      ),
    ],
  );
}
