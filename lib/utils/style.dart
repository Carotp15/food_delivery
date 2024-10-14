import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:food_delivery/utils/text_styles.dart';


class AppStyle {
  AppStyle._();

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    minimumSize: const Size(240, 48), // Set a fixed size here or customize as needed
    backgroundColor: AppColors.greenColor,
    foregroundColor: AppColors.secondaryColor,
    shape: const StadiumBorder(),
    textStyle: AppTextStyles.mediumWhite,
  );

  static ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    minimumSize: const Size(240, 48),
    backgroundColor: AppColors.greenColor,
    foregroundColor: AppColors.secondaryColor,
    textStyle: AppTextStyles.mediumWhite,
    shape: const StadiumBorder(),
  );
}

