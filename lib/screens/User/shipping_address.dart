import 'package:flutter/material.dart';
import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: const Icon(Icons.add),
            )
          ],
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: customizedText(
                  data: 'Shipping Address',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Center(
                child: customizedText(
                    data: 'Your Shipping Adresses',
                    style: TextStyle(
                      fontSize: 10.sp,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
               child:Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return cart_list_view(
                      leading: Image.asset(
                          '../assets/images/msi_gaming.png'),
                      title: customizedText(
                        data: 'Mohsen',
                      ),
                      subtitle: customizedText(
                        data: "200",
                      ),
                      trailing: Icon(Icons.shopping_cart));
                }),
          ) 
               //CustomizedListView3(
              //   shrinkWrap: true,
              //   leading: const Icon(Icons.gps_fixed),
              //   title: customizedText(
              //       data:
              //           'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
              //   subtitle: customizedText(data: ''),
              //   itemCount: 3,
              // ),
            ),
          ],
        ));
  }
}
