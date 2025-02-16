
import 'package:app/presentation/auth/forgot_pwd/forgot_pwd_screen.dart';
import 'package:app/presentation/auth/forgot_pwd/reset_forgot_pwd.dart';
import 'package:app/presentation/auth/login_screen.dart';
import 'package:app/presentation/auth/profile_submission_screen.dart';
import 'package:app/presentation/auth/sign_up_screen.dart';

import 'package:app/presentation/main_screen/auth_main.dart';
import 'package:app/presentation/main_screen/main_screen.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:app/router/transitions.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _authNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: ScreenPath.splash,
    redirect: _handleRedirect,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// Splash Screen
      GoRoute(
        path: ScreenPath.splash,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: Container(),
            transitionsBuilder: useNavChangeTransition,
          );
        },
      ),

      ///Auth shell
      ShellRoute(
        navigatorKey: _authNavigatorKey,
        builder: (context, state, child) {
          return AuthMain(
            key: state.pageKey,
            child: child,
          );
        },
        routes: [
          /// Login
          GoRoute(
            path: ScreenPath.login,
            parentNavigatorKey: _authNavigatorKey,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ScreenLogin(),
              );
            },
            routes: [
              GoRoute(
                path: 'reset',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const MaterialPage(
                    child: ScreenResetPwd(),
                  );
                },
              ),
              GoRoute(
                path: 'submit',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  return const MaterialPage(
                    child: ScreenProfileSubmission(),
                  );
                },
              ),
            ],
          ),

          /// SignUp
          GoRoute(
            path: ScreenPath.signup,
            parentNavigatorKey: _authNavigatorKey,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ScreenSignup(),
              );
            },
          ),

          /// Forgot Pwd
          GoRoute(
            path: ScreenPath.forgotPwd,
            parentNavigatorKey: _authNavigatorKey,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ScreenForgotPwd(),
              );
            },
            
          ),
        ],
      ),

      ///Navigation shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScreenMain(
            key: state.pageKey,
            child: child,
          );
        },
        routes: [
          /// Home
         
          /// Appointment Screen
          
          /// Profile
         
        ],
      ),
    ],
  );
}

String? _initialDeepLink;
String? get initialDeepLink => _initialDeepLink;

String? _handleRedirect(BuildContext context, GoRouterState state) {
  _initialDeepLink ??= state.uri.path;

  return null;
}
