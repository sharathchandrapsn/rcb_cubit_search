import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rcb_cubit_search/features/home/data/user_repository_impl.dart';
import 'package:rcb_cubit_search/features/home/presentation/cubit/user_cubit.dart';
import 'package:rcb_cubit_search/features/home/presentation/pages/home_screen.dart';
import 'package:rcb_cubit_search/features/home/presentation/pages/user_details_screen.dart';
import 'package:rcb_cubit_search/features/login/presentation/pages/login_screen.dart';
import 'package:rcb_cubit_search/features/settings/presentation/pages/settings_screen.dart';
import 'package:rcb_cubit_search/features/splash/presentation/pages/splash_screen.dart';
import '../../features/home/domain/user.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/home',
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
      GoRoute(
        path: '/settings',
        builder: (context, state) {
          return const SettingsScreen();
        },
      ),
    ],
  );
}
