import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          AppDimens.bodyMarginSmall, AppDimens.bodyMarginLarge*2, AppDimens.bodyMarginLarge, 0),
      child: const Row(
        children: [
          Icon(Icons.location_on), 
          SizedBox(width: 4), 
          Expanded( 
            child: Text(
              'Deepolie Street, 42, New York',
              style: AppTextStyles.normal,
            ),
          ),
        ],
      ),
    );
  }
}