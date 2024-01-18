import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/themes/app_text_styles.dart';

class CustomChipTheme {
  CustomChipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: AppColors.disabledFont,
    labelStyle: AppTextStyle.labelNavy,
    selectedColor: AppColors.primaryTrustedNavy,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AppColors.primaryHonestWhite,
  );
}
