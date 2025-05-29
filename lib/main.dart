import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rcb_cubit_search/core/theme/theme_data.dart';
import 'package:rcb_cubit_search/features/home/data/user_repository_impl.dart';
import 'package:rcb_cubit_search/features/home/presentation/app_router.dart';
import 'package:rcb_cubit_search/features/home/presentation/cubit/user_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => UserCubit(UserRepositoryImpl()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: appTheme,
      routerConfig: AppRouter.router,
    );
  }
}
