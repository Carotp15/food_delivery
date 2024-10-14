import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';

class IconWithTextsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const IconWithTextsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 64, color: Colors.grey),
        const SizedBox(height: 16),
        Text(
          title,
          style: AppTextStyles.largeBold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subTitle,
          style: AppTextStyles.normal.copyWith(
            color: AppColors.greenColor
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
