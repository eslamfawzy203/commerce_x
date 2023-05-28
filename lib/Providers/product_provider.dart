

import 'package:commerce_x/Model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productDetailProvider = StateProvider((ref) => Product(
    description: '',
    id: 0,
    image: '',
    name: '',
    price: 0,
    isFavourite: false,
    quantity: 2,),
    );


// final productDetailProvider1 = StateProvider((ref) => ApiProductModel(),
//     );
