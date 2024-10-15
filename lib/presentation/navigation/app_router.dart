import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/domain/models/item.dart';
import 'package:food_delivery/presentation/auth/login/login_screen.dart';
import 'package:food_delivery/presentation/auth/register/register_screen.dart';
import 'package:food_delivery/presentation/product/product_detail_screen.dart';
import 'package:food_delivery/providers/cart_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:food_delivery/presentation/home/home_screen.dart';
import 'package:food_delivery/presentation/welcome/welcome_screen.dart';

final router = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(
      name: 'welcome',
      path: '/welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home/:page',
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },
    ),
    GoRoute(
      name: 'product_detail',
      path: '/product/:id',
      builder: (context, state) {
        final item = state.extra as ItemModel;

        // Use Consumer or ConsumerWidget to access Riverpod's providers
        return Consumer(
          builder: (context, ref, child) {
            final cartNotifier =
                ref.read(cartProvider.notifier); // Access the CartNotifier

            return ProductDetailScreen(
              item: item,
              addToCart: (ItemModel currentItem) {
                cartNotifier.addToCart(
                    currentItem); // Pass addToCart function to ProductDetailScreen
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${currentItem.name} added to cart')),
                );
              },
            );
          },
        );
      },
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(path: '/', redirect: (_, __) => '/home/0'),
  ],
);
