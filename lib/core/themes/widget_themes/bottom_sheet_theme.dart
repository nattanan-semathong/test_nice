import 'package:flutter/material.dart';
import 'package:my_app/core/shared/app_colors.dart';

class CustomBottomSheetTheme {
  CustomBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.primaryHonestWhite,
    modalBackgroundColor: AppColors.primaryHonestWhite,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
