import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomizedListView2 extends StatelessWidget {
  double radius;
  double? height;
  double? width;
  String path;
  String? textOnImage;
  CustomizedListView2({
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
            return Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: const Icon(Icons.favorite_outline_rounded),
                  ),
                ]),
                customizedText(data: 'Hp Laptop',style: const TextStyle(color: Colors.blue)),
                customizedText(data: '15 Inch lcd',style: const TextStyle(color: Colors.blue)),
                customizedText(data: '200\$',style: const TextStyle(color: Colors.blue)),
              ],
            );
          }),
    );
  }
}
