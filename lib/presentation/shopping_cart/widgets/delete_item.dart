import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/providers/cart_provider.dart';

class CartItemWidget extends ConsumerWidget {
  final String item;

  const CartItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.read(cartProvider.notifier); // Access the CartNotifier

    return ListTile(
      title: Text(item),
      trailing: IconButton(
        icon: const Icon(CupertinoIcons.delete),
        onPressed: () {
          cartNotifier.removeFromCart(item as ItemModel);        },
      ),
    );
  }
}