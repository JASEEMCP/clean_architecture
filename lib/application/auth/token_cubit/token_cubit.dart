import 'dart:developer';

import 'package:app/domain/services/auth/auth_services.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:app/domain/auth/token.dart';

part 'token_state.dart';
part 'token_cubit.freezed.dart';

@lazySingleton
class TokenCubit extends Cubit<TokenState> {
  final AuthServices _authService;
  TokenCubit(this._authService) : super(const TokenState.initial());

  Future<void> initTokenState() async {
    try {
      final rt = pref.token.value.refreshToken;
      // Checking token expire or not
      final isExpired = JwtDecoder.isExpired(rt ?? "no");
      // Checking institute profile completed or not
      // final isProfileCompleted = pref.token.value.isSubmit ?? false;
      if (!isExpired && (rt?.isNotEmpty ?? false)) {
        log(pref.token.value.toJson().toString());
        emit(TokenState.authorized(pref.token.value));
      } else {
        emit(const TokenState.initial());
      }
    } catch (_) {
      emit(const TokenState.initial());
    }
  }

  updateToken(Token? t) {
    emit(TokenState.authorized(t));
  }

  logoutUser() {
    pref.token.value = Token();
    appRouter.go(ScreenPath.login);
    emit(const TokenState.initial());
  }

  Future<String?> refreshToken() async {
    final r = await _authService.refresh();
    return r.fold(
      (e) async {
        await logoutUser();
        return null;
      },
      (token) {
        emit(TokenState.authorized(token));
        return token.accessToken;
      },
    );
  }
}
