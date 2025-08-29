import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceSingleton {
  static late SharedPreferences _prefs;
  static final SharedPreferenceSingleton _instance =
      SharedPreferenceSingleton._internal();

  SharedPreferenceSingleton._internal();

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferenceSingleton get instance => _instance;

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  Future<bool> remove(String key) {
    return _prefs.remove(key);
  }
}
