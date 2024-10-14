import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class BottomGradientWidget extends StatelessWidget {
  const BottomGradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: AppColors.avatorsGradient,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );
  }
}