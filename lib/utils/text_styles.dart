import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class AppTextStyles {
  static const TextStyle normal = TextStyle(
    fontSize: 11.0,
    fontWeight: FontWeight.normal,
    fontFamily: 'Gilroy-Bold',
  );

  static const TextStyle medium = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    fontFamily: 'Gilroy-Medium',
    color: AppColors.primaryColor,
  );

  static const TextStyle normalGrey = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    fontFamily: 'Gilroy-Medium',
    color: AppColors.secondaryColor,
  );

}