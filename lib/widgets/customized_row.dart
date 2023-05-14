// ignore_for_file: must_be_immutable

import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomizedRow extends StatelessWidget {
  String data1;
  String data2;
   CustomizedRow({super.key, required this.data1,required this.data2}
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customizedText(
            data: data1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
          ),
          customizedText(
            data: data2,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
