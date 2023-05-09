import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/pin_put.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: customizedText(
                  data: 'Verification',
                  style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
                ),
              ),
              customizedText(
                  data: 'Please enter the OTP code sent to you by SMS'),
              SizedBox(height: 50.h),
              Center(child: buildPinPut()),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(data: "Didn't get a code?"),
                  TextButton(onPressed: () {}, child: const Text('Send again')),
                ],
              ),
              SizedBox(height: 300.h),
              Center(
                  child: SizedBox(
                width: double.infinity.w,
                height: 40.h,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text('Verify')),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
