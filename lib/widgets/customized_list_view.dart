// ignore_for_file: must_be_immutable

import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedListView extends StatelessWidget {
  double radius;
  double? height;
  double? width;
  String path;
  String? textOnImage;
  CustomizedListView({
    required this.radius,
    required this.path,
    this.height,
    this.width,
    this.textOnImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Stack(children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius)),
                  child: SizedBox(
                      height: height!.h,
                      width: width!.w,
                      child: Image.asset(fit:BoxFit.cover,height:height,width:width,path))),
              Positioned(
                  top: 20.h,
                  left: 20.h,
                  child: customizedText(
                    data: textOnImage!,
                    style: const TextStyle(color: Colors.grey),
                  ))
            ]);
          }),
    );
  }
}
