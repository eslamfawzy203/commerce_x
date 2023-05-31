import 'package:commerce_x/Dummy%20Data/dummy_data.dart';
import 'package:commerce_x/screens/Cart/payment.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:commerce_x/widgets/clv2_for_dummy_data';




class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 35.w),
            child: customizedText(
              data: 'Check Out',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: CustomizedRow(
                data1: 'Your Address',
                data2: 'Change Address',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 10,
                child: const TextField(
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText:
                            'Here is my dummy address : Hadayek El Maadi cairo Egypt ,here is my age : im 30 years old and trying me best')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: CustomizedRow(
                data1: 'Shopping Mode',
                data2: 'Change Mode',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customizedText(
                        data: 'Flat Rate',
                        style: const TextStyle(height: 3),
                      ),
                      customizedText(
                          data: '\$20.0', style: const TextStyle(height: 3))
                    ],
                  ),
                ),
              ),
            ),
            CustomizedRow(
              data1: 'Your Cart',
              data2: 'View All',
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length, //apiProducts.length is not working 
                  itemBuilder: (context, index) {
                    return custom_list_view_2_image_asset_widget(
                      radius: 15,
                      height: 70.h,
                      width: 80.w,
                      path: product[index].image,
                      name: product[index].name,
                 
                      isFavourite: product[index].isFavourite,
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: Row(
                children: [
                  customizedText(
                    data: 'Payment Method',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: paymentMethod.length,
                  itemBuilder: (context, index) {
                    return custom_list_view_2_image_asset_widget(
                      radius: 15,
                      height: 50.h,
                      width: 60.w,
                      path: paymentMethod[index].image,
                      name: paymentMethod[index].name,
                   
                      isFavourite: paymentMethod[index].isFavourite,
                    );
                  }),
            ),
            Row(
              children: [
                customizedText(
                  data: 'Order Summary',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      customizedText(data: 'Total'),
                      customizedText(
                        data: '\$170.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.sp),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 50.h,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Payment(),
                                ));
                          },
                          child: const Text('Pay Now'))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
