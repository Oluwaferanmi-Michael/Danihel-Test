import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:flutter/material.dart';

class AppChips extends StatelessWidget {
  const AppChips({
    super.key,
    this.onTap,
    required this.label,
    this.labelStyle,
    this.labelColor = AppColors.white,
    this.backgroundColor = AppColors.whiteBackground40,
    this.isSelected = false,
    this.labelPadding = const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
    this.onSelected,
  });

  final String label;
  final void Function()? onTap;
  final void Function({bool selected})? onSelected;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final Color? labelColor;

  final bool? isSelected;

  final EdgeInsets? labelPadding;

  void select() => onSelected;

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
