import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/dashboard/widgets/category_item_widget.dart';
import 'package:food_delivery/utils/dimentions.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategorySelect;

  const CategoriesWidget({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? AppDimens.bodyMarginLarge : AppDimens.bodyMarginSmall,
              8,
              index == categories.length - 1 ? AppDimens.bodyMarginLarge : AppDimens.bodyMarginSmall,
              8,
            ),
            child: CategoryItem(
              name: categories[index],
              pressed: () => onCategorySelect(index),
              enabled: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}