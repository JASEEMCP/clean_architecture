import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:app/features/auth/domain/token.dart';
import 'package:app/core/local_storage/load_and_save.dart';

@LazySingleton()
class PrefInfo with LoadAndSaveMixin {
  late final token = ValueNotifier<Token>(
    Token(
      accessToken: null,
      refreshToken: null,
      userType: null,
    ),
  )..addListener(save);

  String? _theme;

  @override
  void copyFromJson(Map<String, dynamic> data) {
    token.value.accessToken = data['access_token'] ?? '';
    token.value.refreshToken = data['refresh_token'] ?? '';
    token.value.userType = data['user_type'] ?? '';
    _theme = data['theme'];
  }

  @override
  String get fileName => 'info.dat';

  @override
  Map<String, dynamic> toJson() {
    return {
      'access_token': token.value.accessToken,
      'refresh_token': token.value.refreshToken,
      'user_type': token.value.userType,
      'theme': _theme,
    };
  }

  /// Get saved theme preference
  Future<String?> getTheme() async {
    return _theme;
  }

  /// Set theme preference
  Future<void> setTheme(String theme) async {
    _theme = theme;
    await save();
  }
}
