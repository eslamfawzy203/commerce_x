import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
         Padding(
           padding: const EdgeInsets.all( 10),
           child: Column(mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.center,
                children: [
           Padding(
             padding: EdgeInsets.symmetric(vertical: 5.h),
             child: const CircleAvatar(radius: 50,backgroundImage: AssetImage('../assets/images/profile.jpg')),
           ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: customizedText(data: 'John Doe'),
          ),
         Flexible(child: CustomizedListView3(leading:const Icon(Icons.shop) ,title: const Text('My account')
,trailing:const Icon(Icons.arrow_forward), itemCount: 7, ))
         
         ]
         ,
             ),
         )
    );
  }
}
