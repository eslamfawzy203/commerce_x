import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SizeContainer extends StatelessWidget {
  String inch;
  SizeContainer({super.key, required this.inch});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23.w,
      height: 23.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          color: Colors.white),
      child: Center(
        child: customizedText(
          data: inch,
          style: TextStyle(
              height: 3,
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
              color: Colors.black54),
        ),
      ),
    );
  }
}
