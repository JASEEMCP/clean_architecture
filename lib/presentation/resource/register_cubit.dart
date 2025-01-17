// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:spa/application/common/theme_cubit/theme_cubit.dart';
import 'package:spa/resource/injectable.dart';

class RegisterCubits {
  List<SingleChildWidget> register() {
    return [
      /*Common providers*/
      BlocProvider(create: (context) => getIt<ThemeCubit>()),
    ];
  }
}
