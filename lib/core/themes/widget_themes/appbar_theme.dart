import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/shared/app_dimens.dart';
import 'package:my_app/core/themes/app_text_styles.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primaryHonestWhite,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
        color: AppColors.primaryTrustedNavy, size: AppDimens.iconMd),
    actionsIconTheme: IconThemeData(
        color: AppColors.primaryTrustedNavy, size: AppDimens.iconMd),
    titleTextStyle: AppTextStyle.h1Navy,
  );
}
