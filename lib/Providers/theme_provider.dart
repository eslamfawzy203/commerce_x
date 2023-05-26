// import 'package:commerce_x/Local/shared_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final themeProvider = StateNotifierProvider<ThemesDataClass, ThemeData>(
//     (ref) => ThemesDataClass());


// class ThemesDataClass extends StateNotifier<ThemeData> {
//   ThemesDataClass() : super(ThemeData.dark(useMaterial3: true));

//   lightMode() {
//     state = ThemeData.light(useMaterial3: true);
//      return SharedHelper().setStringData('lightMode', 'lightMode On');
//   }

//   darkMode() {
//     state = ThemeData.dark(useMaterial3: true);
//      return SharedHelper().setStringData('darkMode', 'darkMode On');
//   }

  
// }








// // final themeProvider = StateProvider<ThemeMode>((ref) {
// //   var prefs = SharedPreferences.getInstance();
// //   // ignore: unrelated_type_equality_checks
// //   return (prefs.then((prefs) => prefs.getInt('theme') ?? 0) == 1)
// //       ? ThemeMode.dark
// //       : ThemeMode.light;
// // });

// // Future<void> saveTheme(ThemeMode theme) async {
// //   var prefs = await SharedPreferences.getInstance();
// //   await prefs.setInt('theme', theme == ThemeMode.dark ? 1 : 0);
// // }