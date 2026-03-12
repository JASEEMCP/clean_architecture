import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:app/core/theme/theme.dart';
import 'package:app/core/local_storage/pref_info.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeState> {
  final PrefInfo _prefInfo;

  ThemeCubit(this._prefInfo) : super(const ThemeState.initial()) {
    _loadTheme();
  }

  ThemeType theme = ThemeType.light;
  AppTheme appTheme = AppTheme.fromType(ThemeType.light);

  /// Load saved theme from preferences
  Future<void> _loadTheme() async {
    try {
      final savedTheme = await _prefInfo.getTheme();
      if (savedTheme != null) {
        theme = savedTheme == 'dark' ? ThemeType.dark : ThemeType.light;
      } else {
        // Default to light theme if no saved preference
        theme = ThemeType.light;
      }
      appTheme = AppTheme.fromType(theme);
      emit(ThemeState.theme(theme));
    } catch (e) {
      // If error, default to light theme
      theme = ThemeType.light;
      appTheme = AppTheme.fromType(theme);
      emit(ThemeState.theme(theme));
    }
  }

  /// Save theme to preferences
  Future<void> _saveTheme(ThemeType themeType) async {
    try {
      final themeString = themeType == ThemeType.dark ? 'dark' : 'light';
      await _prefInfo.setTheme(themeString);
    } catch (e) {
      // Silently fail if save fails
    }
  }

  /// Toggle between light and dark theme
  Future<void> changeTheme() async {
    if (theme == ThemeType.light) {
      theme = ThemeType.dark;
    } else {
      theme = ThemeType.light;
    }

    appTheme = AppTheme.fromType(theme);
    await _saveTheme(theme);
    emit(ThemeState.theme(theme));
  }

  /// Set specific theme
  Future<void> setTheme(ThemeType themeType) async {
    theme = themeType;
    appTheme = AppTheme.fromType(theme);
    await _saveTheme(theme);
    emit(ThemeState.theme(theme));
  }
}
