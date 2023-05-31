import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/Dummy%20Data/api_product_model.dart';
import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  // Convert to consumer
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: customizedText(
                    data: 'Search',
                    style: TextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Expanded(
                      child: customizedSearchBar(
                    onChanged: (value) => searchitems(value),
                    hintText: 'Search Here',
                  )),
                  const Card(
                    elevation: 5,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.display_settings_rounded)),
                  ),
                ],
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: searchedProducts.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return cart_list_view(
                        leading:
                            Image.network(searchedProducts[index].image!),
                        title: customizedText(
                          data: searchedProducts[index].title!,
                        ),
                        subtitle: customizedText(
                          data: searchedProducts[index].description!,
                        ),
                        trailing: const Icon(Icons.shopping_cart));
                  })
            ],
          ),
        ),
      ),
    );
  }

  List<ApiProductModel> results = [];
  List<ApiProductModel> searchedProducts = apiProducts;
  void searchitems(String enteredKeyWord) {
    if (enteredKeyWord.isEmpty) {
      searchedProducts = apiProducts;
    } else {
      results = apiProducts
          .where((product) => product.title!
              .toLowerCase()
              .contains(enteredKeyWord.toLowerCase()))
          .toList();
    }
    setState(() {
      searchedProducts = results;
    });
  }
}
