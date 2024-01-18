import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/themes/app_text_styles.dart';

/* -- Light Elevated Button Themes -- */
class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: AppColors.primaryHonestWhite,
            backgroundColor: AppColors.primaryRefreshingOrange,
            disabledForegroundColor: AppColors.secondaryGrey_50,
            disabledBackgroundColor: AppColors.secondaryGrey_10,
            textStyle: AppTextStyle.buttonSmallWhite,
            shape: const StadiumBorder())
        .copyWith(
      iconColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            // Change to the desired color for the disabled state
            return AppColors.secondaryGrey_50;
          }

          // Change to the desired color for the enabled state
          return AppColors.primaryHonestWhite;
        },
      ),
    ),
  );
}
