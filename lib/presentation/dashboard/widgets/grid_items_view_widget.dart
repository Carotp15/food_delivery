import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/shared_widgets/food_item.dart';
import 'package:food_delivery/utils/dimentions.dart';

class ItemsGridWidget extends StatelessWidget {
  final List<ItemModel> items;
  final Function(ItemModel) onToggleStatus;
  final Function(ItemModel) addToCart; 

  const ItemsGridWidget({
    super.key, 
    required this.items, 
    required this.onToggleStatus,
    required this.addToCart, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.5) + (MediaQuery.of(context).size.width * 0.15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
        ),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.fromLTRB(
            index == 0 ? AppDimens.bodyMarginLarge : AppDimens.bodyMarginMedium,
            AppDimens.bodyMarginMedium,
            index == items.length - 1 ? AppDimens.bodyMarginLarge : AppDimens.bodyMarginMedium,
            AppDimens.bodyMarginMedium,
          ),
          child: FoodItem(
            item: items[index],
            showHero: true, 
            onToggleStatus: () => onToggleStatus(items[index]), 
            addToCart: addToCart, 
          ),
        ),
      ),
    );
  }
}




