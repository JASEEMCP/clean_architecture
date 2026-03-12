// ignore_for_file: depend_on_referenced_packages

import 'package:app/features/auth/application/create_user_cubit/create_user_cubit.dart';
import 'package:app/features/auth/application/login_cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:app/core/application/theme_cubit/theme_cubit.dart';
import 'package:app/core/di/injectable.dart';

class RegisterCubits {
  List<SingleChildWidget> register() {
    return [
      /*Common providers*/
      BlocProvider(create: (context) => getIt<ThemeCubit>()),
      /*Auth providers*/
      BlocProvider(create: (context) => getIt<LoginCubit>()),
      BlocProvider(create: (context) => getIt<CreateUserCubit>()),
    ];
  }
}
