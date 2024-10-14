import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';
import 'package:get/get.dart';
import 'package:food_delivery/utils/colors.dart';

void customSnackBar(String title, String msg) {
  Get.snackbar(title, msg,
      snackPosition: SnackPosition.TOP,
      barBlur: 8,
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
      titleText: Text(
        title,
        style: AppTextStyles.normalGrey,
      ),
      messageText: Text(msg,
          style: AppTextStyles.normalGrey,
          ));
}