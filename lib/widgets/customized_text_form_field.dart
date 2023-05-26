import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types, must_be_immutable
class customizedTextFormField extends StatelessWidget {
  TextEditingController? controller;

  String hintText;
  int? maxLines;

  customizedTextFormField({
    super.key,
    required this.hintText,
    this.maxLines,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: hintText)),
      ),
    );
  }
}

