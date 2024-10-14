import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/empty_cart.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/cart_item.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/swipe_hint.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/providers/cart_provider.dart';


class CartBody extends ConsumerWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider); 
    final cartNotifier = ref.read(cartProvider.notifier); 

    return SafeArea(
      child: Column(
        children: [
          const SwipeHint(),
          SizedBox(height: AppDimens.bodyMarginMedium),
          Expanded(
            child: cartItems.isNotEmpty
                ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: AppDimens.bodyMarginSmall),
                        child: CartItemWidget(
                          item: item,
                          onRemove: () => cartNotifier.removeFromCart(item), 
                          onIncrement: () => cartNotifier.incrementQuantity(item), 
                          onDecrement: () => cartNotifier.decrementQuantity(item), 
                        ),
                      );
                    },
                  )
                : const EmptyCart(),
          ),
          SizedBox(height: AppDimens.bodyMarginSmall),
        ],
      ),
    );
  }
}



