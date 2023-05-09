import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class customizedTextFormField extends StatelessWidget {
  String hintText;
   customizedTextFormField({
    super.key,required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 8,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15))),
        ),
      ),
    );
  }
}
