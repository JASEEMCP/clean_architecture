import 'package:app/domain/failure/api_failure.dart';
import 'package:app/domain/services/auth/auth_services.dart';
import 'package:app/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthServices _authServices;
  LoginCubit(this._authServices) : super(LoginState.initial());

  Future<void> login(String identifier, String pwd) async {
    emit(LoginState.loading());

    final res = await _authServices.login(identifier.trim(), pwd.trim());
    res.fold(
      (e) => emit(LoginState.error(e)),
      (t) {
        pref.token.value = t;
        tokenCubit.updateToken(t);
        emit(LoginState.success());
      },
    );
  }
}
