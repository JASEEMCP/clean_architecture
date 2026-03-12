import 'dart:developer';

import 'package:app/features/auth/domain/services/auth_services.dart';
import 'package:app/core/utils/common_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:app/features/auth/domain/token.dart';

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

  void updateToken(Token? t) {
    emit(TokenState.authorized(t));
  }

  void logoutUser() {
    pref.token.value = Token();
    appRouter.go(ScreenPath.login);
    emit(const TokenState.initial());
  }

  Future<String?> refreshToken() async {
    final r = await _authService.refresh();
    return r.fold(
      (e) async {
        logoutUser();
        return null;
      },
      (token) {
        emit(TokenState.authorized(token));
        return token.accessToken;
      },
    );
  }
}
