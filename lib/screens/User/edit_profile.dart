import 'package:commerce_x/Local/shared_helper.dart';
import 'package:commerce_x/Local/user_model.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_text_form_field_for_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController countryController = TextEditingController();

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 35.w),
              child: customizedText(
                data: 'Edit Profile',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('../assets/images/profile.jpg')),
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[50],
                        child: const Icon(Icons.camera_alt_rounded))
                  ],
                ),
              ),
              customizedTextFormFieldForProfile(
                hintText: 'Name',
                controller: nameController,
              ),
              customizedTextFormFieldForProfile(
                  hintText: 'Email', controller: emailController),
              customizedTextFormFieldForProfile(
                  hintText: 'Phone', controller: phoneController),
              customizedTextFormFieldForProfile(
                  hintText: 'Country', controller: countryController),
              Center(
                child: SizedBox(
                  width: double.infinity.w,
                  child: ElevatedButton(
                      onPressed: () {
                        // SharedHelper()
                        //     .setStringData('userName', nameController.text);
                        // SharedHelper()
                        //     .setStringData('userEmail', emailController.text);
                        // SharedHelper()
                        //     .setStringData('userPhone', phoneController.text);
                        // SharedHelper().setStringData(
                        //     'userCountry', countryController.text);
                        SharedHelper().setStringData(
                            'User0',
                            UserModel(
                                id: 0,
                                name: nameController.text,
                                email: emailController.text,
                                phone: phoneController.text,
                                country: countryController.text).toMap().toString());
                      },
                      child: const Text('Save')),
                ),
              ),
              // Center(
              //   child: SizedBox(
              //     width: double.infinity.w,
              //     child: ElevatedButton(
              //         onPressed: () {
              //           // print(SharedHelper().getStringData('userName'));
              //           // print(SharedHelper().getStringData('userEmail'));
              //           // print(SharedHelper().getStringData('userPhone'));
              //           // print(SharedHelper().getStringData('userCountry'));
              //           print(SharedHelper().getStringData('User0').toString());
              //         },
              //         child: const Text('Print')),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
