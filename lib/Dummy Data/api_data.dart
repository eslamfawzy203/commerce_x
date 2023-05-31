import 'package:commerce_x/Controller/dio_helper.dart';
import 'package:commerce_x/Dummy Data/api_product_model.dart';

List listofAll = [
  [apiProducts],
  [categories],
  [jewelery],
  [womenClothing]
];
List<ApiProductModel> apiProducts = [];
List categories = [];
List <ApiProductModel> jewelery = [];
List <ApiProductModel> womenClothing = [];

getProducts() async {
  try {
    await DioHelper.get(endpoint: 'products').then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          apiProducts.add(ApiProductModel.fromJson(element));
        }
      }
    });
  } catch (e) {
    print(e);
  }
}

getCategories() async {
  try {
    await DioHelper.get(endpoint: 'products/categories').then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          categories.add((element));
        }
      }
    });
  } catch (e) {
    print(e);
  }
}

getJewelery() async {
  try {
    await DioHelper.get(endpoint: 'products/category/jewelery').then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          jewelery.add(ApiProductModel.fromJson(element));
        }
      }
    });
  } catch (e) {
    print(e);
  }
}

getWomenClothing() async {
  try {
    await DioHelper.get(endpoint: "products/category/women's clothing")
        .then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          womenClothing.add(ApiProductModel.fromJson(element));
        }
      }
    });
  } catch (e) {
    print(e);
  }
}
