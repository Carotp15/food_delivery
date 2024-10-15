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

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;