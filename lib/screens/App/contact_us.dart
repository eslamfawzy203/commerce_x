import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: customizedText(
                  data: 'Contact Us',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.phone_iphone, color: Colors.blue, size: 25),
              title: Text(
                'Phones',
                style: TextStyle(height: 2, fontSize: 10.sp),
              ),
              subtitle: Text(
                '+12398489483543',
                style: TextStyle(height: 2, fontSize: 9.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: ListTile(
                leading: const Icon(Icons.email_outlined,
                    color: Colors.blue, size: 25),
                title: Text(
                  'Email',
                  style: TextStyle(height: 2, fontSize: 10.sp),
                ),
                subtitle: Text(
                  'hello@example.com',
                  style: TextStyle(height: 2, fontSize: 9.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 5.h),
              child: customizedText(data: 'Subject'),
            ),
            customizedTextFormField(
              hintText: 'Type your subject here ...',
              maxLines: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 5.h),
              child: customizedText(data: 'Your Message'),
            ),
            customizedTextFormField(
              hintText: 'Type your messages here ...',
              maxLines: 5,
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text('Send')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
