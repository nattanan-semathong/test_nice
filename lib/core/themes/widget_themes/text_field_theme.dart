import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/shared/app_dimens.dart';
import 'package:my_app/core/themes/app_text_styles.dart';

class CustomTextFormFieldTheme {
  CustomTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.primaryTrustedNavy,
    suffixIconColor: AppColors.primaryTrustedNavy,
    // constraints: const BoxConstraints.expand(height: AppDimens.inputFieldHeight),
    labelStyle: AppTextStyle.labelGrey,
    hintStyle: AppTextStyle.textFieldPlaceholderGray,
    errorStyle: AppTextStyle.labelError,
    floatingLabelStyle: AppTextStyle.textFieldFloatLabelGray,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppDimens.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.gray_03),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppDimens.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.gray_03),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppDimens.inputFieldRadius),
      borderSide:
          const BorderSide(width: 1, color: AppColors.primaryTrustedNavy),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppDimens.inputFieldRadius),
      borderSide:
          const BorderSide(width: 1, color: AppColors.utilityRedError_100),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppDimens.inputFieldRadius),
      borderSide:
          const BorderSide(width: 2, color: AppColors.utilityRedError_70),
    ),
  );
}
