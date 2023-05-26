import 'package:flutter/material.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> languages = [
  'English',
  'French',
  'German',
  'Chinese',
  'Japanese',
  'Turkish'
];

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 45.w),
              child: customizedText(
                data: 'Language',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Center(
                  child: customizedText(
                      data: 'Select a Language',
                      style: TextStyle(
                        fontSize: 10.sp,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: languages.length,
                  itemBuilder: (context, index) => Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(
                          Icons.flag_rounded,
                          color: Colors.blue,
                        ),
                        title: Text(languages[index]),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
