import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/shared/app_config.dart';
import 'package:my_app/core/themes/text_theme.dart';
import 'package:my_app/core/themes/widget_themes/appbar_theme.dart';
import 'package:my_app/core/themes/widget_themes/bottom_sheet_theme.dart';
import 'package:my_app/core/themes/widget_themes/checkbox_theme.dart';
import 'package:my_app/core/themes/widget_themes/chip_theme.dart';
import 'package:my_app/core/themes/widget_themes/elevated_button_theme.dart';
import 'package:my_app/core/themes/widget_themes/floating_action_button_theme.dart';
import 'package:my_app/core/themes/widget_themes/outlined_button_theme.dart';
import 'package:my_app/core/themes/widget_themes/text_field_theme.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: AppConfigs.ekachonFontfamily,
      disabledColor: AppColors.disabledFont,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryConfidentBlue,
      primaryColorLight: AppColors.primaryConfidentBlue,
      textTheme: CustomTextTheme.lightTextTheme,
      chipTheme: CustomChipTheme.lightChipTheme,
      scaffoldBackgroundColor: AppColors.primaryHonestWhite,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
      floatingActionButtonTheme:
          CustomFloatingActionButtonTheme.lightFloatingActionButtonTheme);
}
