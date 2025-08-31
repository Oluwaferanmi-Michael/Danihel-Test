import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  appBarTheme: AppBarThemeData(
    elevation: 0,
    backgroundColor: AppColors.appBar,
    actionsPadding: EdgeInsets.only(right: $insets.x15),
    leadingWidth: 48,
    // foregroundColor: AppColors.white,
  ),
  inputDecorationTheme: InputDecorationThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: $insets.x15, vertical: $insets.x10),
    isDense: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide.none,
    ),
    filled: true,
    suffixIconColor: AppColors.white,
    hintStyle: $appTextStyles.paragraph,
    fillColor: AppColors.whiteBackground40,
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.all(AppColors.white),
  ),
);
