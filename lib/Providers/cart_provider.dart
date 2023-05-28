import 'package:commerce_x/Dummy%20Data/api_product_model.dart';
import 'package:commerce_x/Model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider =
    StateNotifierProvider<CartClass, List<ApiProductModel>>((ref) => CartClass());

class CartClass extends StateNotifier<List<ApiProductModel>> {
  num totalPrice = 0;
  CartClass() : super([]);

  addToCart(ApiProductModel apiProductModel) {
    if (apiProductModel.quantity == 0 || apiProductModel.quantity == null) {
      apiProductModel.quantity = 1;
      totalPrice = apiProductModel.price! + totalPrice;
      state.add(apiProductModel);
      state = [...state];
    } else { // for any number except for 0 or null
      apiProductModel.quantity = apiProductModel.quantity! + 1;
      totalPrice = apiProductModel.price! + totalPrice;
      state = [...state];
    }
  }

  removerFromCart(ApiProductModel apiProductModel) {
    if (apiProductModel.quantity == 1) {
      apiProductModel.quantity = 0;
      totalPrice = totalPrice - apiProductModel.price!;
      state.remove(apiProductModel);
      state = [...state];
      if (state.isEmpty) {
        totalPrice = 0;
      }
    } else {
      apiProductModel.quantity = apiProductModel.quantity! - 1;
      totalPrice = totalPrice - apiProductModel.price!;
      state = [...state];
    }
  }

  clearCart() {
    state = [];
  }
}
