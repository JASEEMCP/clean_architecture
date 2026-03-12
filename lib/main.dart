import 'package:app/features/auth/application/token_cubit/token_cubit.dart';
import 'package:app/core/application/theme_cubit/theme_cubit.dart';
import 'package:app/core/network/api/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:app/core/app_logic.dart';
import 'package:app/core/presentation/root_app.dart';
import 'package:app/core/local_storage/pref_info.dart';
import 'package:app/core/di/injectable.dart';
import 'package:app/core/router/router.dart';
import 'package:app/core/theme/styles.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );

  //Configuring injection
  await configureInjection();

  runApp(const RootApp());

  // Starting bootstrap
  await appLogic.bootstrap();
}

AppStyle get $style => RootApp.style;
final appRouter = AppRouter.router;
PrefInfo get pref => getIt<PrefInfo>();
AppLogic get appLogic => getIt<AppLogic>();
TokenCubit get tokenCubit => getIt<TokenCubit>();
ThemeCubit get themeCubit => getIt<ThemeCubit>();
DioClient get dio => getIt<DioClient>();
