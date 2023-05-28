import 'package:commerce_x/Controller/dio_helper.dart';
import 'package:commerce_x/Dummy Data/api_product_model.dart';

List apiProducts = [];

getProducts() async {
  try {
    await DioHelper.get(endpoint: 'products').then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          apiProducts.add(ApiProductModel.fromJson(element));
          print(ApiProductModel.fromJson(element).id);
        }
      }
      print(value.data);
    });
  } catch (e) {
    print(e);
  }
}
