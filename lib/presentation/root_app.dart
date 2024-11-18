

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure/application/common/theme_cubit/theme_cubit.dart';
import 'package:structure/infrastructure/env/env.dart';
import 'package:structure/resource/register_cubit.dart';
import 'package:structure/resource/utils/extensions.dart';
import 'package:structure/router/router.dart';
import 'package:structure/styles/styles.dart';
import 'package:structure/styles/theme.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  static AppStyle get style => _style;
  static AppStyle _style = AppStyle();
  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        ...RegisterCubits().register(),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
           _style = AppStyle(screenSize: context.mq);
          return MaterialApp.router(
            title: 'Name',
            debugShowCheckedModeBanner: Env.kDebugMode,
            theme: AppTheme.fromType(ThemeType.light).themeData,
            routerConfig: AppRouter.router,
            
          );
        },
      ),
    );
  }
}
