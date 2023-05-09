import 'package:commerce_x/screens/sign_in.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 1), () async {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SignIn()),
          (route) => false);
      super.didChangeDependencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
