import 'package:app/features/auth/presentation/forgot_pwd/forgot_pwd_screen.dart';
import 'package:app/features/auth/presentation/forgot_pwd/reset_forgot_pwd.dart';
import 'package:app/features/auth/presentation/login_screen.dart';
import 'package:app/features/main/presentation/auth_main.dart';
import 'package:app/core/utils/common_lib.dart';

class AuthShell {
  static final _authNavigatorKey = GlobalKey<NavigatorState>();
  List<RouteBase> authList = [
    ///Auth Navigation shell
    ShellRoute(
      navigatorKey: _authNavigatorKey,
      builder: (context, state, child) {
        return AuthMain(
          key: state.pageKey,
          child: child,
        );
      },
      routes: [
        // Login Screen
        GoRoute(
          parentNavigatorKey: _authNavigatorKey,
          path: ScreenPath.login,
          pageBuilder: (context, state) {
            return MaterialPage(
              // transitionsBuilder: useNavChangeTransition,
              child: ScreenLogin(),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _authNavigatorKey,
          path: ScreenPath.forgotPwd,
          pageBuilder: (context, state) {
            return const MaterialPage(
              // transitionsBuilder: useNavChangeTransition,
              child: ScreenForgotPwd(),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _authNavigatorKey,
          path: ScreenPath.forgotNewPwd,
          pageBuilder: (context, state) {
            return const MaterialPage(
              // transitionsBuilder: useNavChangeTransition,
              child: ScreenResetPwd(),
            );
          },
        ),
      ],
    ),
  ];
}
