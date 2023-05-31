// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class customizedSearchBar extends StatelessWidget {
  String? hintText;
  void Function(String)? onChanged;
   customizedSearchBar( {this.hintText,this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 150.w,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5,
        child: SizedBox(
          height: 40.h,
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30)),
                prefixIcon: const Icon(Icons.search),
                hintText: hintText),
          ),
        ),
      ),
    );
  }
}
