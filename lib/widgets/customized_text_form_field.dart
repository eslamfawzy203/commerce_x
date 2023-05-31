import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types, must_be_immutable
class customizedTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;

  String hintText;
  int? maxLines;
  bool? obscureText;
  final IconData? iconData;
  final Widget? suffix;
  void Function()? onTap;

  customizedTextFormField({
    super.key,
    required this.hintText,
    this.maxLines,
    this.controller,
    this.validator,
    this.obscureText,
    this.onTap,
    this.suffix,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: TextFormField(
            obscureText: obscureText ?? false,
            controller: controller,
            validator: validator,
            maxLines: maxLines,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                suffixIcon: iconData != null
                    ? InkWell(onTap: onTap, child: Icon(iconData))
                    : const SizedBox(),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: hintText)),
      ),
    );
  }
}
