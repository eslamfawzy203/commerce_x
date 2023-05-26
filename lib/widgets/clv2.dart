import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class custom_list_view_2_widget extends StatelessWidget {
   custom_list_view_2_widget({
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
                    child: Image.asset(
                        fit: BoxFit.cover,
                        width: width!.w,
                        height: height!.h,
                        path))),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                  color: Colors.white24),
              width: 20.w,
              height: 20.h,
              clipBehavior: Clip.antiAlias,
              child: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_outline_rounded,
                  color: isFavourite ? Colors.red : Colors.grey),
            ),
          ]),
          customizedText(
              data: name, style: const TextStyle(color: Colors.blue)),
          customizedText(
              data: '\$ $price', style: const TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
