
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static late SharedPreferences prefs;

  static Future prefInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future setBoolData(String key, bool value) async {
    await prefs.setBool(key, value);
  }

  getboolData(String key) {
    return prefs.getBool(key);
  }

  Future setIntData(String key, int value) async {
    await prefs.setInt(key, value);
  }

  getIntData(String key) {
    return prefs.getInt(key);
  }

  Future setStringData(String key, dynamic value) async {
    await prefs.setString(key, value);
  }

  getStringData(String key) {
    return prefs.getString(key);
  }

  clear() async{
   await prefs.clear();
  }

  


}
