import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';

/* -- Light Elevated Button Themes -- */
class CustomFloatingActionButtonTheme {
  CustomFloatingActionButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static const lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
    elevation: 0,
    foregroundColor: AppColors.primaryHonestWhite,
    backgroundColor: AppColors.primaryRefreshingOrange,
    shape: CircleBorder(),
  );
}
