import 'package:commerce_x/widgets/customized_container.dart';
import 'package:commerce_x/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category1 extends StatelessWidget {
  const Category1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     Padding(
       padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 40.h),
       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisSize: MainAxisSize.min,
        children: [Row(
          children: [
            Expanded(flex:1,child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: customizedSearchBar(hintText: 'Search Category'),
            )),
          ],
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const CustomizedContainer();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 5,crossAxisSpacing: 5),
          ),
        )
        ],),
     ) 

     );
  }
}



