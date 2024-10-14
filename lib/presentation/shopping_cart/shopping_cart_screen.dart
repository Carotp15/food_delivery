import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/cart_app_bar.dart';
import 'package:food_delivery/presentation/shopping_cart/widgets/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CartAppBar(),
      body: CartBody(),
    );
  }
}

