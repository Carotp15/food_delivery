import 'package:flutter/material.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/delete_item.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/empty_cart.dart';
import 'package:food_delivery/utils/dimentions.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> cartList = [];

    return Expanded(
      child: cartList.isNotEmpty
          ? ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: AppDimens.bodyMarginMedium),
                  child: CartItemWidget(item: cartList[index].toString()),
                );
              },
            )
          : const EmptyCart(),
    );
  }
}