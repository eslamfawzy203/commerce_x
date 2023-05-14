import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomizedListView3 extends StatelessWidget {
  Widget leading;
  Widget title;
  Widget trailing;
  Widget? subtitle;
  int itemCount;
  CustomizedListView3(
      {super.key,
      required this.leading,
      required this.title,
      required this.trailing,
      required this.itemCount,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: leading,
                title: title,
                subtitle: subtitle,
                trailing: trailing,
              ));
        });
  }
}
