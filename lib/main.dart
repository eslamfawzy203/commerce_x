import 'package:commerce_x/Controller/dio_helper.dart';
import 'package:commerce_x/Local/shared_helper.dart';
import 'package:commerce_x/Providers/shared_preferences_provider.dart';
import 'package:commerce_x/app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
//late final FirebaseApp app;
//late final FirebaseAuth auth;
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
   // auth = FirebaseAuth.instanceFor(app: app);
  DioHelper().init();
  SharedHelper.prefInstance();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(overrides: [
    sharedPreferencesProvider.overrideWithValue(prefs),], 
        child: const MyApp()));
}
