// ignore_for_file: must_be_immutable
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customized_api_list_view_widget extends StatelessWidget {
  const customized_api_list_view_widget({
    super.key,
    required this.radius,
    required this.height,
    required this.width,
    required this.path,
    required this.textOnImage,
  });

  final double radius;
  final double? height;
  final double? width;
  final String path;
  final String? textOnImage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(color: Colors.white70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
          child: Image.network(isAntiAlias: true,
              fit: BoxFit.cover,
              height: height,
              width: width,
              path)),
      Positioned(
          top: 20.h,
          left: 20.h,
          child: customizedText(
            data: textOnImage!,
            style: const TextStyle(color: Colors.grey),
          ))
    ]);
  }
}
