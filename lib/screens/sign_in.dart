import 'package:commerce_x/screens/sign_up.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.grey[50],elevation: 0),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.h),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            customizedText(
              data: 'Welcome back!',
              style:  TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            customizedText(data: 'Login to your existing account'),
            SizedBox(height: 30.h),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/logo2.png',
              )
            ]),
            Padding(
              padding:  EdgeInsets.only(left: 5.w, bottom: 5.w),
              child: customizedText(data: ('Email Address')),
            ),
            customizedTextFormField(hintText: 'e.g name@example.com'),
            Padding(
              padding:  EdgeInsets.only(left: 5.w, bottom: 5.w),
              child: customizedText(data: 'Password'),
            ),
            customizedTextFormField(hintText: 'e.g *************'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Row(
                  children: [
                    // ignore: avoid_returning_null_for_void
                    Checkbox(value: false, onChanged: (value) => null),
                    customizedText(data: 'Remember me'),
                  ],
                ),
                customizedText(data: 'Forget Password'),
              ],
            ),
             SizedBox(
              height: 50.h,
            ),
            Center(
              child: SizedBox(width: double.infinity.w,height: 40.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) => const SignUp()));
                    },
                    child: const Text('Login')),
              ),
            ), SizedBox(height: 15.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const CircleAvatar(
                  foregroundImage: AssetImage('assets/images/google_logo1.png'),
                ),SizedBox(width: 50.w),
                const CircleAvatar(backgroundColor:Colors
                .white,foregroundImage: AssetImage('assets/images/facebook_logo5.png'),)
              ],
            ),SizedBox(height:15.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customizedText(data: "Don't have an account?"),TextButton(onPressed: (){}, child:const Text('Sign Up')),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
