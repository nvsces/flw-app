import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool logged = false;
  final plugin = VKLogin(debug: true);
  String _token = '';

  void checkAuth() async {
    print('start check');
    // final sharedPreferences = await SharedPreferences.getInstance();
    // final token = sharedPreferences.getString('token');
    // if (token != null) {
    //   logged = true;
    //   notifyListeners();
    // }
    await plugin.initSdk();
    print('init sdk');
  }

  void loginVK() async {
    await plugin.initSdk();
    final res = await plugin.logIn(scope: [
      VKScope.email,
    ]);
    if (!res.isError) {
      final loginResult = res.asValue!.value;
      final profile = await plugin.getUserProfile();
      final sharedPreferences = await SharedPreferences.getInstance();

      final userValue = profile.asValue?.value;
      if (userValue != null) {
        print(userValue);
      }
    }
  }

  void registr() async {}
}
