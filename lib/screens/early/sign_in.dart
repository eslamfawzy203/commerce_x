import 'package:commerce_x/Local/shared_helper.dart';
import 'package:commerce_x/Local/user_model.dart';
import 'package:commerce_x/screens/early/sign_up.dart';
import 'package:commerce_x/screens/Home/home_base.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final StateProvider<bool> visibilityOffProvider =
    StateProvider<bool>((ref) => true);


TextEditingController emailController = useTextEditingController();
TextEditingController passwordController = useTextEditingController();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();


class SignIn extends HookConsumerWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context, ref) {
   // final bool visibilityOff = ref.watch(visibilityOffProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 40.h),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              customizedText(
                data: 'Welcome back!',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              customizedText(data: 'Login to your existing account'),
              SizedBox(height: 30.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/logo2rt.png',
                )
              ]),
              Padding(
                padding: EdgeInsets.only(left: 5.w, bottom: 5.w),
                child: customizedText(data: ('Email Address')),
              ),
              customizedTextFormField(
                hintText: 'e.g name@example.com',
                controller: emailController,
                // validator: (val) {
                //   if (val!.length >= 12 && val.contains('@')) {
                //     return null;
                //   } else {
                //     return 'Enter valid value';
                //   }
                // },
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w, bottom: 5.w),
                child: customizedText(data: 'Password'),
              ),
              customizedTextFormField(
                maxLines: 1,
                hintText: 'e.g *************',
                // onTap: () {
                //     ref.watch(visibilityOffProvider.notifier).state =
                //         !visibilityOff;
                //     //  visibility = !visibility;
                //   },
                  // obscureText: visibilityOff ? true : false,
                  // iconData:
                  //     visibilityOff ? Icons.visibility_off : Icons.visibility,
                controller: passwordController,
                // validator: (val) {
                //   if (val!.isNotEmpty) {
                //     return null;
                //   } else {
                //     return "This field cannot be empty";
                //   }
                // },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                child: SizedBox(
                  width: double.infinity.w,
                  height: 40.h,
                  child: ElevatedButton(
                      onPressed: () async {
                        //print(SharedHelper().getStringData('Name')); Done Eslam printed
                        if (formKey.currentState!.validate()) {
                           SharedHelper()
                              .setStringData(
                                  'savedUser',
                                  UserModel(
                                          email: emailController.text,
                                          password: passwordController.text)
                                      .toMap()).whenComplete(() => Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const HomeBase())))
                              .toString();
                        }
                        
                      },
                      child: const Text('Login')),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black12,
                    foregroundImage:
                        AssetImage('assets/images/google_logo1.png'),
                  ),
                  SizedBox(width: 50.w),
                  const CircleAvatar(
                    backgroundColor: Colors.black12,
                    foregroundImage:
                        AssetImage('assets/images/facebook_logo5.png'),
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(data: "Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const SignUp()));
                      },
                      child: const Text('Sign Up')),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
