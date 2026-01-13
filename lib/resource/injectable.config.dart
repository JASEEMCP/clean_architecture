// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../application/auth/create_user_cubit/create_user_cubit.dart' as _i490;
import '../application/auth/login_cubit/login_cubit.dart' as _i726;
import '../application/auth/token_cubit/token_cubit.dart' as _i98;
import '../application/common/theme_cubit/theme_cubit.dart' as _i509;
import '../domain/app_logic.dart' as _i659;
import '../domain/services/auth/auth_services.dart' as _i909;
import '../domain/services/common/admin_services.dart' as _i162;
import '../domain/services/common/user_services.dart' as _i552;
import '../domain/services/event/boy_event_service.dart' as _i931;
import '../domain/services/event/captain_event_service.dart' as _i423;
import '../domain/services/event/supervisor_event_service.dart' as _i177;
import '../infrastructure/auth/auth_repo.dart' as _i1003;
import '../infrastructure/event/boy_event_repo.dart' as _i548;
import '../infrastructure/event/captain_event_repo.dart' as _i567;
import '../infrastructure/event/supervisor_event_repo.dart' as _i795;
import '../infrastructure/user/admin_repo.dart' as _i981;
import '../infrastructure/user/user_repo.dart' as _i277;
import 'api/dio_client.dart' as _i891;
import 'db/pref_info.dart' as _i29;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i29.PrefInfo>(() => _i29.PrefInfo());
  gh.lazySingleton<_i659.AppLogic>(() => _i659.AppLogic());
  gh.lazySingleton<_i177.SupervisorEventService>(
    () => _i795.SupervisorEventRepo(),
  );
  gh.lazySingleton<_i552.UserServices>(() => _i277.UserRepo());
  gh.lazySingleton<_i909.AuthServices>(() => _i1003.AuthRepo());
  gh.lazySingleton<_i931.BoyEventService>(() => _i548.BoyEventRepo());
  gh.lazySingleton<_i423.CaptainEventService>(() => _i567.CaptainEventRepo());
  gh.lazySingleton<_i162.AdminServices>(() => _i981.AdminRepo());
  gh.factory<_i726.LoginCubit>(
    () => _i726.LoginCubit(gh<_i909.AuthServices>()),
  );
  gh.factory<_i490.CreateUserCubit>(
    () => _i490.CreateUserCubit(gh<_i909.AuthServices>()),
  );
  gh.lazySingleton<_i98.TokenCubit>(
    () => _i98.TokenCubit(gh<_i909.AuthServices>()),
  );
  gh.lazySingleton<_i509.ThemeCubit>(
    () => _i509.ThemeCubit(gh<_i29.PrefInfo>()),
  );
  gh.lazySingleton<_i891.DioClient>(
    () => _i891.DioClient(gh<_i98.TokenCubit>()),
  );
  return getIt;
}
