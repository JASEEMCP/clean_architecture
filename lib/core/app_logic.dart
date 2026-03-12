import 'package:app/features/auth/application/token_cubit/token_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:app/main.dart';
import 'package:app/core/router/router_path.dart';

@lazySingleton
class AppLogic {
  ///This used for redirecting
  bool isBootStrapComplete = false;

  Future<void> bootstrap() async {
    try {
      //FlutterSecureStorage().deleteAll();
      /// Initializing db
      await pref.load();

      /// Initializing token state
      await tokenCubit.initTokenState();

      ///Flagging bootstrap
      isBootStrapComplete = true;

      if (tokenCubit.state.isAuthenticated) {
        appRouter.go(ScreenPath.home);
      } else {
        appRouter.go(ScreenPath.login);
      }
    } catch (e) {
      //appRouter.go(ScreenPath.login);
    }
  }
}
