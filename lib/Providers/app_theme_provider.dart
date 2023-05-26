import 'package:commerce_x/Providers/shared_preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';


final appThemeProvider = ChangeNotifierProvider((ref) {
  return AppTheme(ref.watch(sharedPreferencesProvider));
});

class AppTheme extends ChangeNotifier {
  AppTheme(this.prefs);

  final SharedPreferences prefs;

  /// Get the current value from SharedPreferences.
  bool getTheme() => prefs.getBool('isDarkMode') ?? false;

  /// Store the current value in SharedPreferences.
  void setTheme(bool isDarkMode) {
    prefs.setBool('isDarkMode', isDarkMode);

    notifyListeners();
  }
}