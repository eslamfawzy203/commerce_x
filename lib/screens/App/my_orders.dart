import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/my_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 35.w),
              child: customizedText(
                data: 'My Orders',
                style: const TextStyle(
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Expanded(child: ListView.builder(itemCount: 6,itemBuilder:(context, index) => const MyOrderCard())) 
          ],
        ),
      ),
    );
  }
}

