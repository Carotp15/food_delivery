import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.large.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}