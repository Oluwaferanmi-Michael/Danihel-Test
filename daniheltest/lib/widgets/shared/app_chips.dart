import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:flutter/material.dart';

/// Flutter has a strange behaviour where the Material Chips dont respond to
/// opacity change in the backgroundColor and color parameters

/// in order to preserve the UX I created an AppChip Widget unique to the app
/// with customisable parameters

class AppChips extends StatelessWidget {
  const AppChips({
    super.key,
    this.onTap,
    required this.label,
    this.labelStyle,
    this.labelColor = AppColors.white,
    this.backgroundColor = AppColors.whiteBackground40,
    this.labelPadding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 12,
    ),
  });

  final String label;
  final void Function()? onTap;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final Color? labelColor;

  final EdgeInsets? labelPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: labelPadding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: backgroundColor,
        ),
        child: Text(
          label,
          style:
              labelStyle?.copyWith(color: labelColor) ??
              $appTextStyles.mediumTag.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
