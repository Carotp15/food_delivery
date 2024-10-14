import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color secondaryColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color darkGreyColor = Color.fromARGB(255, 78, 78, 78);
  static const Color greenColor = Color.fromRGBO(97, 173, 78, 1);
  static const Color backgroundScreens = Color(0xFFF2F2F2);
  static const Color textFieldInside = Color(0xFFEFEEEE);
  
  static final avatorsGradient = [
    AppColors.darkGreyColor.withOpacity(0.01),
    AppColors.darkGreyColor.withOpacity(0.5),
    AppColors.darkGreyColor,
  ];
}