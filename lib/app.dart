import 'package:commerce_x/screens/early/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData.dark(
              useMaterial3: true

          // primarySwatch: Colors.blue,

            ),
            home://const HomeScreen()
            const Splash()
            //const HomeBase() 
            //const Search()
            //const WishList()
            //const Profile()
            //const Category1()
            //const HomeScreen()
            
            
            );},
    );
  }
}
