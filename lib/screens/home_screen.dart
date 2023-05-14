import 'package:commerce_x/widgets/customized_list_view.dart';
import 'package:commerce_x/widgets/customized_row.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/clv2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Expanded(child: customizedSearchBar(hintText: 'Search Product')),
                  const Card(
                    elevation: 5,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.shopping_cart)),
                  ),
                  const Card(
                      elevation: 5,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.notifications))),
                ],
              ),
            ),
            CustomizedRow(
              data1: 'Special for you',
              data2: 'See More',
            ),
            CustomizedListView(
                radius: 15,
                height: 120.h,
                width: 150.w,
                path: '../assets/images/laptops2.png',
                textOnImage: 'Computers'),
            CustomizedRow(data1: 'Featured Products', data2: 'See More'),
            CustomizedListView2(
              radius: 15,
              height: 70.h,
              width: 80.w,
              path: '../assets/images/laptops4.png',
              textOnImage: '',
            ),
            CustomizedRow(data1: 'Best Selling Products', data2: 'See More'),
            CustomizedListView(
              radius: 15,
              height: 120.h,
              width: 80.w,
              path: '../assets/images/laptops4.png',
              textOnImage: '',
            ),
          ],
        ),
      ),
    );
  }
}
