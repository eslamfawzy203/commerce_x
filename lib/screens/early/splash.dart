import 'package:commerce_x/Dummy%20Data/api_data.dart';
import 'package:commerce_x/screens/early/sign_in.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({
    super.key,
  });

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 1),
    ).then((value) => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const SignIn()),
        (route) => false));
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo1r.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
