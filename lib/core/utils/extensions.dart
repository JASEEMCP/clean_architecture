import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/core/application/theme_cubit/theme_cubit.dart';
import 'package:app/main.dart';
import 'package:app/core/theme/responsive_layout.dart';
import 'package:app/core/theme/theme.dart';

/// BuildContext
extension BuildContextX on BuildContext {
  Size get mq => MediaQuery.sizeOf(this);

  AppTheme get theme => watch<ThemeCubit>().appTheme;

  bool get isMobile => ResponsiveLayout.isMobile(this);
  bool get isTablet => ResponsiveLayout.isTablet(this);
  bool get isDesktop => ResponsiveLayout.isDesktop(this);

  void pushR(Widget screen) =>
      Navigator.push(this, CupertinoPageRoute(builder: (ctx) => screen));

  void showCustomSnackBar(String content, [Color? color]) =>
      ScaffoldMessenger.of(this).showSnackBar(showSnackBar(content, color));
}

/// String
extension StringStyling on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(
    RegExp(' +'),
    ' ',
  ).split(' ').map((str) => str.toCapitalized()).join(' ');
}

SnackBar showSnackBar(String content, [Color? color]) {
  return SnackBar(
    dismissDirection: DismissDirection.down,
    duration: const Duration(milliseconds: 1400),
    elevation: 0,
    content: Center(
      child: Text(
        content,
        textScaler: const TextScaler.linear(1),
        textAlign: TextAlign.center,
        maxLines: 3,
        style: $style.text.textSBold14.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
  );
}
