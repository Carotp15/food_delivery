import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/quantity_control.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/text_styles.dart';

class CartItemWidget extends StatelessWidget {
  final ItemModel item;
  final VoidCallback onRemove;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItemWidget({
    super.key,
    required this.item,
    required this.onRemove,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(item.id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        onRemove(); 
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.red,
        child: const Icon(
          CupertinoIcons.delete,
          color: Colors.white,
          size: 32,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: item.id,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(item.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.normalB,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1, 
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$${item.price}',
                      style: AppTextStyles.large.copyWith(
                        fontSize: 14,
                        color: AppColors.greenColor,
                      ),
                    ),
                  ],
                ),
              ),
              QuantityControl(
                item: item,
                onIncrement: onIncrement, 
                onDecrement: onDecrement, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}

