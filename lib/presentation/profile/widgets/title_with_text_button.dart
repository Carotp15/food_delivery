import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';

class TitleWithTextButton extends StatelessWidget {
  final String title;
  final String buttonText;
  final Function() onPressed;
  const TitleWithTextButton({
    required this.title,
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.normalDGrey.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: AppTextStyles.normal,
            ))
      ],
    );
  }
}