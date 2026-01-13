import 'package:flutter/material.dart';
import 'package:app/styles/colors.dart';
import 'package:flutter/services.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  bool? isDark = false;
  Color? kPrimaryGold = AppColors.kGold;
  Color? kPrimaryGoldLight = AppColors.kGoldLight;
  Color? kSecondary = AppColors.kSecondary;
  Color? kSecondaryLight = AppColors.kSecondaryLight;
  Color kBlack;
  Color kWhite;

  Color shadowGreyToYellowSwitcher() => isDark ?? false
      ? kPrimaryGold!.withValues(
          alpha: 0.05,
        )
      : const Color.fromARGB(255, 221, 212, 212);

  /// Default constructor
  AppTheme({
    this.isDark,
    this.kSecondary,
    this.kPrimaryGold,
    this.kPrimaryGoldLight,
    this.kSecondaryLight,
    required this.kBlack,
    required this.kWhite,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          kSecondary: AppColors.kSecondary,
          kSecondaryLight: AppColors.kSecondaryLight,
          kPrimaryGold: AppColors.kGold,
          kBlack: AppColors.kBlack,
          kWhite: AppColors.kWhite,
          kPrimaryGoldLight: AppColors.kGoldLight,
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          kSecondary: AppColors.kSecondaryDark,
          kSecondaryLight: AppColors.kSecondaryLightDark,
          kPrimaryGold: AppColors.kGoldDark,
          kBlack: AppColors.kBlackDark,
          kWhite: AppColors.kWhiteDark,
          kPrimaryGoldLight: AppColors.kGoldLightDark,
        );
    }
  }

  ThemeData get themeData {
    var t = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      scaffoldBackgroundColor: kWhite,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.kGold,

        primary: AppColors.kGold,
        secondary: AppColors.kGold,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: kWhite,
        surfaceTintColor: kWhite,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: kWhite,
          statusBarIconBrightness: isDark == true
              ? Brightness.light
              : Brightness.dark,
          systemNavigationBarIconBrightness: isDark == true
              ? Brightness.light
              : Brightness.dark,
        ),
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
