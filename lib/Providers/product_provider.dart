import 'package:commerce_x/Dummy%20Data/api_product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productDetailProvider = StateProvider(
  (ref) => ApiProductModel(
    description: '',
    id: 0,
    image: '',
    //name: '',
    price: "0",
    isFavourite: false,
    quantity: 2,
  ),
);
