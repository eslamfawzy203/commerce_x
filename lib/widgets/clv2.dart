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
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: onTap,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: Alignment.bottomRight, children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius)),
                    child: Image.network(
                        fit: BoxFit.cover, height: height, width: width, path)),
                // Container(
                //   decoration: const BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //           bottomRight: Radius.circular(30),
                //           topLeft: Radius.circular(30)),
                //       color: Colors.white24),
                //   width: 20.w,
                //   height: 20.h,
                //   clipBehavior: Clip.antiAlias,

                // ),
                Icon(
                    isFavourite
                        ? Icons.favorite
                        : Icons.favorite_outline_rounded,
                    color: isFavourite ? Colors.red : Colors.grey),
              ]),
              customizedText(
                  data: name,
                  style: TextStyle(fontSize: 10.sp, color: Colors.blue)),
              customizedText(
                  data: '\$ $price',
                  style: const TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
