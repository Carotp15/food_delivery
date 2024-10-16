import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TweenAnimationBuilder(
          duration: const Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (BuildContext context, double value, Widget? child) {
            return Opacity(
              opacity: value,
              child: Padding(
                padding: EdgeInsets.only(left: AppDimens.bodyMarginMedium),
                child: const Center(
                  child: Text(
                  'Grattu: Brunch & Desserts',
                  maxLines: 2,
                  style: AppTextStyles.largeWhite
                  ),
                ),
              ),
            );
          },
          curve: Curves.easeIn,
        ),
      ],
    );
  }
}
