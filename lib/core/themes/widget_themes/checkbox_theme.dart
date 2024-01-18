import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/shared/app_dimens.dart';

/// Custom Class for Light & Dark Text Themes
class CustomCheckboxTheme {
  CustomCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryHonestWhite;
      } else {
        return AppColors.primaryTrustedNavy;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryTrustedNavy;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
