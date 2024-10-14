import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/utils/style.dart';
import 'package:food_delivery/utils/text_styles.dart';

class AddToCartButton extends StatelessWidget {
  final ItemModel item;
  final Function(ItemModel) addToCart; 

  const AddToCartButton({
    super.key,
    required this.item,
    required this.addToCart, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimens.bodyMarginLarge,
        0,
        AppDimens.bodyMarginLarge,
        AppDimens.bodyMarginLarge * 2,
      ),
      child: ElevatedButton(
        onPressed: () {
          addToCart(item); 
        },
        style: (AppStyle.secondaryButton),
        child: const Text('Add to cart',
          style: AppTextStyles.mediumWhite),
      ),
    );
  }
}


