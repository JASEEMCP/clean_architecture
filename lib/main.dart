import 'package:flutter/material.dart';
import 'package:structure/domain/app_logic.dart';
import 'package:structure/presentation/root_app.dart';
import 'package:structure/resource/db/pref_info.dart';
import 'package:structure/resource/injectable.dart';
import 'package:structure/router/router.dart';
import 'package:structure/styles/styles.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
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