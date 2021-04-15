import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Future<String> getName() async {
    return _getString(PrefKeys.NAME);
  }

  static setName(String name) async {
    _setString(PrefKeys.NAME, name);
  }

  static Future<int> getAge() async {
    return _getInt(PrefKeys.AGE);
  }

  static setAge(int age) async {
    _setInt(PrefKeys.AGE, age);
  }

  static Future<String> getBirthDay() async {
    return _getString(PrefKeys.BIRTH_DAY);
  }

  static setBirthDay(String birthDay) async {
    _setString(PrefKeys.BIRTH_DAY, birthDay);
  }

  static Future<String> _getString(PrefKeys key) async {
    final prefs = await _getPrefs();
    return prefs.getString(key.toString());
  }

  static Future<void> _setString(PrefKeys key, String value) async {
    final prefs = await _getPrefs();
    prefs.setString(key.toString(), value);
  }

  static Future<int> _getInt(PrefKeys key) async {
    final prefs = await _getPrefs();
    return prefs.getInt(key.toString());
  }

  static Future<void> _setInt(PrefKeys key, int value) async {
    final prefs = await _getPrefs();
    prefs.setInt(key.toString(), value);
  }

  static Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }
}

enum PrefKeys {
  NAME,
  AGE,
  BIRTH_DAY,
}
