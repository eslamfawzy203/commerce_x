import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 35.w),
              child: customizedText(
                data: 'Notifications',
                style: const TextStyle(
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: customizedText(data: 'Promotions'),
            ),
           
           Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return cart_list_view(
                      leading: Image.asset(
                          'assets/images/msi_gaming.png'),
                      title: customizedText(
                        data: 'Mohsen',
                      ),
                      subtitle: customizedText(
                        data: "200",
                      ),
                      trailing: Icon(Icons.shopping_cart));
                }),
          ), // CustomizedListView3(shrinkWrap: true,
            //   leading: Image.asset('../assets/images/laptops2.png'),
            //   title: customizedText(data: 'Lorem ipsum is placeholder text commonly used in the graphic, print'),
            //   subtitle: customizedText(data: '10.00 AM'),
            //   itemCount: 2,
            // ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: customizedText(data: 'Your Activity'),
            ),
            //  CustomizedListView3(shrinkWrap: true,
            //            leading: const CircleAvatar(child: Icon(Icons.payment,color: Colors.blue,)),
            //            title: customizedText(data: 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
            //            subtitle: customizedText(data: 'Yesterday 10:45 AM'),
            //            itemCount: 3,
            //          )
          ],
        ),
      ),
    ));
  }
}
