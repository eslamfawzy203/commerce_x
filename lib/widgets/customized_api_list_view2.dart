import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class customized_api_list_view_2_widget extends StatelessWidget {
   customized_api_list_view_2_widget({
    super.key,
    required this.radius,
    required this.height,
    required this.width,
    required this.path,
    required this.name,
     this.price,
    required this.isFavourite,
    this.onTap,
  });

  final double radius;
  final double? height;
  final double? width;
  final String path;
  final String name;
  final double? price;
  final bool isFavourite;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.bottomRight, children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius)),
                  child: SizedBox(
                      height: height!.h,
                      width: width!.w,
                      child: Image.network(
                          fit: BoxFit.cover,
                          width: width!.w,
                          height: height!.h,
                          path))),
            ]),
            customizedText(
                data: name, style: const TextStyle(color: Colors.blue)),
            customizedText(
                data:'\$ $price', style: const TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
