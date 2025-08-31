import 'package:daniheltest/util/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppText {
  TextStyle _createFont(
    TextStyle style, {
    required double fontSize,
    double? textHeight,
    double? spacing,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.inter(
      textStyle: style.copyWith(
        fontFamily: 'Inter',
        fontSize: fontSize,
        height: textHeight ?? textHeight,
        letterSpacing: spacing != null
            ? fontSize * spacing * 0.01
            : style.letterSpacing,
        fontWeight: fontWeight,
      ),
    );
  }

  late final TextStyle h1 = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 36,
    fontWeight: FontWeight.w700,
    textHeight: 1,
  );
  late final TextStyle h2 = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle h2_2 = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 20,
  );

  late final TextStyle h3 = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  late final TextStyle smallTag = _createFont(
    TextStyle(color: AppColors.tagColor),
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  late final TextStyle mediumTag = _createFont(
    TextStyle(color: AppColors.tagColor),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  late final TextStyle paragraph = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 14,

  );
  late final TextStyle button = _createFont(
    TextStyle(color: AppColors.white),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
