// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/application/create_user_cubit/create_user_cubit.dart'
    as _i76;
import '../../features/auth/application/login_cubit/login_cubit.dart' as _i318;
import '../../features/auth/application/token_cubit/token_cubit.dart' as _i1033;
import '../../features/auth/domain/services/auth_services.dart' as _i968;
import '../../features/auth/infrastructure/auth_repo.dart' as _i1000;
import '../../features/events/domain/services/boy_event_service.dart' as _i303;
import '../../features/events/domain/services/captain_event_service.dart'
    as _i539;
import '../../features/events/domain/services/supervisor_event_service.dart'
    as _i1059;
import '../../features/events/infrastructure/boy_event_repo.dart' as _i112;
import '../../features/events/infrastructure/captain_event_repo.dart' as _i60;
import '../../features/events/infrastructure/supervisor_event_repo.dart'
    as _i607;
import '../../features/users/domain/services/admin_services.dart' as _i104;
import '../../features/users/domain/services/user_services.dart' as _i439;
import '../../features/users/infrastructure/admin_repo.dart' as _i843;
import '../../features/users/infrastructure/user_repo.dart' as _i343;
import '../app_logic.dart' as _i45;
import '../application/theme_cubit/theme_cubit.dart' as _i632;
import '../local_storage/pref_info.dart' as _i604;
import '../network/api/dio_client.dart' as _i797;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i45.AppLogic>(() => _i45.AppLogic());
  gh.lazySingleton<_i604.PrefInfo>(() => _i604.PrefInfo());
  gh.lazySingleton<_i303.BoyEventService>(() => _i112.BoyEventRepo());
  gh.lazySingleton<_i439.UserServices>(() => _i343.UserRepo());
  gh.lazySingleton<_i1059.SupervisorEventService>(
    () => _i607.SupervisorEventRepo(),
  );
  gh.lazySingleton<_i104.AdminServices>(() => _i843.AdminRepo());
  gh.lazySingleton<_i968.AuthServices>(() => _i1000.AuthRepo());
  gh.lazySingleton<_i539.CaptainEventService>(() => _i60.CaptainEventRepo());
  gh.lazySingleton<_i632.ThemeCubit>(
    () => _i632.ThemeCubit(gh<_i604.PrefInfo>()),
  );
  gh.factory<_i76.CreateUserCubit>(
    () => _i76.CreateUserCubit(gh<_i968.AuthServices>()),
  );
  gh.factory<_i318.LoginCubit>(
    () => _i318.LoginCubit(gh<_i968.AuthServices>()),
  );
  gh.lazySingleton<_i1033.TokenCubit>(
    () => _i1033.TokenCubit(gh<_i968.AuthServices>()),
  );
  gh.lazySingleton<_i797.DioClient>(
    () => _i797.DioClient(gh<_i1033.TokenCubit>()),
  );
  return getIt;
}
