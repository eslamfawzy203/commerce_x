// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class customizedText extends StatelessWidget {
  String data;
  TextStyle? style;
   customizedText({
    required this.data,
    super.key,
    this.style
  });

  @override
  Widget build(BuildContext context) {
    return Text(data,style: style);
  }
}
