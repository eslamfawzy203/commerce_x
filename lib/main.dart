import 'package:commerce_x/Controller/dio_helper.dart';
import 'package:commerce_x/Local/shared_helper.dart';
import 'package:commerce_x/Providers/shared_preferences_provider.dart';
import 'package:commerce_x/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  DioHelper().init();
  SharedHelper.prefInstance();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  //print(apiProducts.length);
  runApp(ProviderScope(overrides: [
    sharedPreferencesProvider.overrideWithValue(prefs),], 
    
    child: const MyApp()));
}
