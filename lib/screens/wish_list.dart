import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: customizedText(data: 'Wish List',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: Row(
              children: [
                Expanded(child: customizedSearchBar(hintText: 'SearchProduct',)),
              ],
            ),
          ),
          Flexible(
              child: CustomizedListView3(
            leading: Image.asset('../assets/images/laptops2.png'),
            title: const Text('Bluetooth Printer'),
            trailing: const Icon(Icons.shopping_cart_sharp),
            subtitle:
                customizedText(data: (String.fromCharCodes(Runes('\u0024')))), itemCount: 5,
          ))
        ],
      ),
    ));
  }
}
