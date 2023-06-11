import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/Dummy%20Data/api_product_model.dart';
import 'package:commerce_x/screens/Home/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider =
    StateNotifierProvider<SearchClass, List<ApiProductModel>>((ref) => SearchClass());

class SearchClass extends StateNotifier<List<ApiProductModel>> {
  List<ApiProductModel> results = [];
  List<ApiProductModel> searchedProducts = apiProducts;

  SearchClass() : super(apiProducts);

  searchitems(String enteredKeyWord) {
    if (enteredKeyWord.isEmpty) {
      searchedProducts = apiProducts;
      state = [...state];
    } else {
      results = apiProducts
          .where((product) => product.title!
              .toLowerCase()
              .contains(enteredKeyWord.toLowerCase()))
          .toList();
      state = [];
      state = results;
      print(results.length);
      state = [...state];
    }
  }
}
