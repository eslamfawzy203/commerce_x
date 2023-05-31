import 'package:commerce_x/Providers/app_theme_provider.dart';
import 'package:commerce_x/screens/early/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MyApp extends ConsumerWidget {
 const MyApp({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkMode = ref.watch(appThemeProvider).getTheme();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: const Splash()
            
            );
      },
    );
  }
}
