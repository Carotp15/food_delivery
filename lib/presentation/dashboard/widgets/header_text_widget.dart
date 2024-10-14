import 'package:flutter/cupertino.dart';
import 'package:food_delivery/presentation/dashboard/widgets/dropdown_menu_widget.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/text_styles.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimens.bodyMarginMedium,
        AppDimens.bodyMarginLarge * 2,
        AppDimens.bodyMarginSmall,
        0,
      ),
      child: const Row(
        children: [
          Icon(CupertinoIcons.location_solid),
          SizedBox(width: 4),
          Expanded(
            child: Text(
              'Deepolie Street, 42, New York',
              style: AppTextStyles.normal,
            ),
          ),
          CustomDropdownWidget(), 
        ],
      ),
    );
  }
}