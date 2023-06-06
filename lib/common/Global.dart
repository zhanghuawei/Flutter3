import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Global {
  static late SharedPreferences _preferences;
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    _preferences = await SharedPreferences.getInstance();
  }

  static const _keyToken = 'token';
  static Future setToken(String token) async => await _preferences.setString(_keyToken, token);
  static String? getToken(String s) => _preferences.getString(_keyToken);
  // 持久化Profile信息
  static saveProfile() => { print("测试全局变量")};
}

