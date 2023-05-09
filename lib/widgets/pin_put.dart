import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

Widget buildPinPut() {
  return const Pinput();
}
final defaultPinTheme = PinTheme(
  width: 56.w,
  height: 56.h,
  textStyle:  TextStyle(fontSize: 20.sp, color: const Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);


