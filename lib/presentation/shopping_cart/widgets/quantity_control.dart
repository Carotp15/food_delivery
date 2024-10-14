import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';

class QuantityControl extends StatelessWidget {
  final ItemModel item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantityControl({
    super.key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.5),
                onTap: onDecrement,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), 
                  child: Text(
                    '-',
                    style: AppTextStyles.mediumWhite, 
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0), 
              child: Text(
                item.quantity.toString(),
                style: AppTextStyles.mediumWhite,
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.5),
                onTap: onIncrement,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), 
                  child: Text(
                    '+',
                    style: AppTextStyles.mediumWhite, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

