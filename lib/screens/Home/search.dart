import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/Dummy%20Data/api_product_model.dart';
import 'package:commerce_x/Providers/searchProvider.dart';
import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//List<ApiProductModel> searchedProducts = apiProducts;
// ignore: must_be_immutable
class Search extends ConsumerWidget {
  // Convert to consumer
  const Search({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var list = ref.watch(searchProvider);

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
                    onChanged: (p0) {
                      ref.watch(searchProvider.notifier).searchitems(p0);
                    },
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
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return cart_list_view(
                        leading: Image.network(list[index].image!),
                        title: customizedText(
                          data: list[index].title!,
                        ),
                        subtitle: customizedText(
                          data: list[index].description!,
                        ),
                        trailing: const Icon(Icons.shopping_cart));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
