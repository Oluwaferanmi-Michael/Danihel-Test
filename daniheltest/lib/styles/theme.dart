import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  
  chipTheme: ChipThemeData(
    selectedColor: Color.fromRGBO(23, 40, 37, 0.8),

    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
    shape: StadiumBorder(),
    backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
    side: BorderSide.none,
    labelPadding: EdgeInsets.zero,
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.all(Colors.white),
    backgroundColor: WidgetStateProperty.all(Colors.white),
  ),
);
