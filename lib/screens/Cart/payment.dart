import 'package:commerce_x/screens/Home/home_screen.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 35.w),
            child: customizedText(
              data: 'Payment',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.check)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: customizedText(
                      data: 'Payment Successful!',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: customizedText(
                      data: 'Your order will be processed and sent to',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: customizedText(
                      data: 'you as soon as possible',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));},
                          child: const Text('Continue Shopping')),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
