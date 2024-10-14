import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final Function() pressed;
  final bool enabled;
  final double width;

  const CategoryItem(
      {super.key,
      required this.name,
      required this.pressed,
      this.enabled = false,
      this.width = 60.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.greenColor.withOpacity(0.1),
      highlightColor: AppColors.greenColor.withOpacity(0.1),
      onTap: pressed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              name,
              style: enabled ? AppTextStyles.normalB.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.greenColor,
              ) : AppTextStyles.normalB.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGreyColor,
              ),

            ),
          ),
          const SizedBox(
            height: 5,
          ),
          AnimatedContainer(
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 250),
            width: width,
            height: 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: enabled ? AppColors.greenColor : Colors.transparent,
                boxShadow: [
                  BoxShadow(
                      color:
                          enabled ? AppColors.greenColor : Colors.transparent,
                      offset: const Offset(3, 3),
                      blurRadius: 12)
                ]),
          )
        ],
      ),
    );
  }
}