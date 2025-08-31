import 'package:flutter/material.dart';

@immutable
class AppText {
  TextStyle _createFont(
    TextStyle style, {
    required double fontSize,
    double? textHeight,
    double? spacing,
    FontWeight? fontWeight,
  }) {
    return style.copyWith(
      fontSize: fontSize,
      height: textHeight ?? textHeight,
      letterSpacing: spacing != null
          ? fontSize * spacing * 0.01
          : style.letterSpacing,
      fontWeight: fontWeight,
    );
  }

  late final TextStyle h1 = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 36,
  );
  late final TextStyle h2 = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle h2_2 = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 20,
  );

  late final TextStyle h3 = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  late final TextStyle smallTag = _createFont(
    TextStyle(color: Color.fromRGBO(23, 40, 37, 0.8)),
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  late final TextStyle mediumTag = _createFont(
    TextStyle(color: Color(0xFF306157)),
    fontSize: 12,
  );
  late final TextStyle paragraph = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 14,
    // textHeight: 125
  );
  late final TextStyle button = _createFont(
    TextStyle(color: Colors.white),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
