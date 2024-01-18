import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';
import 'package:my_app/core/themes/app_text_styles.dart';

/* -- LightOutlined Button Themes -- */
class CustomOutlinedButtonTheme {
  CustomOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.primaryRefreshingOrange,
      disabledForegroundColor: AppColors.secondaryGrey_50,
      disabledBackgroundColor: AppColors.secondaryGrey_10,
      textStyle: AppTextStyle.buttonSmallOrange,
      shape: const StadiumBorder(),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: AppColors.secondaryGrey_50);
          }
          return const BorderSide(color: AppColors.primaryRefreshingOrange);
        },
      ),
    ),
  );
}
