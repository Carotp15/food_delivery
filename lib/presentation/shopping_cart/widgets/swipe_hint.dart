import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';

class SwipeHint extends StatelessWidget {
  const SwipeHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/touch_swipe.svg',
          width: 24,
          height: 24,
        ),
        SizedBox(width: AppDimens.bodyMarginSmall),
        const Text(
          'Swipe to the left on an item to delete',
          style: AppTextStyles.mediumGrey,
        ),
      ],
    );
  }
}