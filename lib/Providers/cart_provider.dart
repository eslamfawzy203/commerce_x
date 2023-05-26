import 'package:commerce_x/Model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider =
    StateNotifierProvider<CartClass, List<Product>>((ref) => CartClass());

class CartClass extends StateNotifier<List<Product>> {
  double totalPrice = 0;
  CartClass() : super([]);

  addToCart(Product product) {
    if (product.quantity == 0 || product.quantity == null) {
      product.quantity = 1;
      totalPrice = product.price + totalPrice;
      state.add(product);
      state = [...state];
    } else { // for any number except for 0 or null
      product.quantity = product.quantity! + 1;
      totalPrice = product.price + totalPrice;
      state = [...state];
    }
  }

  removerFromCart(Product product) {
    if (product.quantity == 1) {
      product.quantity = 0;
      totalPrice = totalPrice - product.price;
      state.remove(product);
      state = [...state];
      if (state.isEmpty) {
        totalPrice = 0;
      }
    } else {
      product.quantity = product.quantity! - 1;
      totalPrice = totalPrice - product.price;
      state = [...state];
    }
  }

  clearCart() {
    state = [];
  }
}
