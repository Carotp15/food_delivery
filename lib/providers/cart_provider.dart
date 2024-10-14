import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/domain/models/item.dart';

final cartProvider = StateNotifierProvider<CartNotifier, List<ItemModel>>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<List<ItemModel>> {
  CartNotifier() : super([]);


  void addToCart(ItemModel item) {
    if (!state.contains(item)) {
      state = [...state, item]; 
    }
  }

 
  void removeFromCart(ItemModel item) {
    state = state.where((cartItem) => cartItem.id != item.id).toList();
  }

  void incrementQuantity(ItemModel item) {
    state = state.map((cartItem) {
      if (cartItem.id == item.id) {
        cartItem.quantity += 1;
      }
      return cartItem;
    }).toList();
  }
  
  void decrementQuantity(ItemModel item) {
    state = state.map((cartItem) {
      if (cartItem.id == item.id && cartItem.quantity > 1) {
        cartItem.quantity -= 1;
      }
      return cartItem;
    }).toList();
  }
}
