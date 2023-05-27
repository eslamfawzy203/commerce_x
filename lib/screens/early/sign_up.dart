import 'package:commerce_x/screens/early/sign_in.dart';
import 'package:commerce_x/screens/early/verification.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              customizedText(
                data: 'Sign Up',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              customizedText(
                  data: 'Please enter your information below to signup'),
              SizedBox(height: 30.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/logo2rt.png',
                )
              ]),
              Padding(
                padding: EdgeInsets.only(left: 5.w, bottom: 5.w),
                child: customizedText(data: 'Name'),
              ),
              customizedTextFormField(hintText: 'Please enter your name'),
              Padding(
                padding: EdgeInsets.only(left: 5.w, bottom: 5.w),
                child: customizedText(data: 'Email'),
              ),
              customizedTextFormField(hintText: 'Please enter your mail'),
              Padding(
                padding: EdgeInsets.only(left: 5.w, bottom: 5.w),
                child: customizedText(data: 'Password'),
              ),
              customizedTextFormField(hintText: 'Please enter your Password'),
              SizedBox(
                height: 50.h,
              ),
              Center(
                  child: SizedBox(
                width: double.infinity.w,
                height: 40.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const Verification()));
                    },
                    child: const Text('Sign Up')),
              )),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(data: "Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const SignIn()));
                      },
                      child: const Text('Sign in')),
                ],
              )
            ]),
          ),
        ));
  }
}
