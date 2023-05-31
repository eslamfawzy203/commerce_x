import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/Providers/product_provider.dart';
import 'package:commerce_x/screens/Cart/cart.dart';
import 'package:commerce_x/screens/App/notifications.dart';
import 'package:commerce_x/screens/App/product_details.dart';
import 'package:commerce_x/widgets/customized_api_list_view.dart';
import 'package:commerce_x/widgets/customized_row.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/clv2.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(productDetailProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                          child:
                              customizedSearchBar(hintText: 'Search Product'))),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cart()));
                    },
                    child: const Card(
                      elevation: 5,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.shopping_cart)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notifications()));
                    },
                    child: const Card(
                        elevation: 5,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.notifications))),
                  ),
                ],
              ),
            ),
            CustomizedRow(
              data1: 'Special for you',
              data2: 'See More',
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: apiProducts.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        ref
                            .read(productDetailProvider.notifier)
                            .update((state) => apiProducts[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ));
                      },
                      child: customized_api_list_view_widget(
                          radius: 30,
                          height: 130.h,
                          width: 130.w,
                          path: apiProducts[index].image!,
                          textOnImage: apiProducts[index].title),
                    );
                  }),
            ),
            CustomizedRow(data1: 'Featured Products', data2: 'See More'),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: jewelery.length,
                  itemBuilder: (context, index) {
                    return custom_list_view_2_widget(
                      onTap: () {
                        ref
                            .read(productDetailProvider.notifier)
                            .update((state) => jewelery[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ));
                      },
                      radius: 15,
                      height: 120.h,
                      width: 130.w,
                      path: jewelery[index].image!,
                      name: jewelery[index].title!,
                      price: double.parse(jewelery[index].price!),
                      isFavourite: jewelery[index].isFavourite,
                    );
                  }),
            ),
            CustomizedRow(data1: 'Best Selling Products', data2: 'See More'),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: womenClothing.length,
                  itemBuilder: (context, index) {
                    return custom_list_view_2_widget(
                      onTap: () {
                        ref
                            .read(productDetailProvider.notifier)
                            .update((state) => womenClothing[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ));
                      },
                      radius: 15,
                      height: 80.h,
                      width: 130.w,
                      path: womenClothing[index].image!,
                      name: womenClothing[index].title!,
                      price: double.parse(womenClothing[index].price!),
                      isFavourite: womenClothing[index].isFavourite,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
