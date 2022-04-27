import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:flw_app/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  bool logged = false;
  final plugin = VKLogin(debug: true);
  String _token = '';

  void logout() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('token');
    logged = false;
    notifyListeners();
  }

  void checkAuth() async {
    print('start check');
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token',
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTE1NTQ1MDIsImlhdCI6MTY1MDgzNDUwMiwidXNlcl9pZCI6Mn0.ShL7F_8ErhyEkBKIZyEVi93KoSiDt85LsUepiH5TPwY');
    final token = sharedPreferences.getString('token');
    if (token != null) {
      logged = true;
      notifyListeners();
    }
    print('init sdk');
  }

  void loginVK() async {
    await plugin.initSdk();
    final res = await plugin.logIn(scope: [
      VKScope.email,
    ]);
    print(res);
    if (!res.isError) {
      final loginResult = res.asValue!.value;
      final profile = await plugin.getUserProfile();

      final userValue = profile.asValue?.value;
      if (userValue != null) {
        print(userValue);

        final user = UserModel(
          name: userValue.firstName,
          vkId: userValue.userId,
          photoUrl: userValue.photo200 ?? '',
          accessToken: loginResult.accessToken?.token ?? '',
        );
        final token = await loginServer(user);
        final sharedPreferences = await SharedPreferences.getInstance();
        print(token);
        sharedPreferences.setString('token', token);
        logged = true;
        notifyListeners();
      }
    }
  }

  Future<String> loginServer(UserModel user) async {
    const host = "http://45.67.59.215:8000";
    var url = Uri.parse('$host/auth/login');
    final data = user.toMap();

    var response = await http.post(
      url,
      headers: <String, String>{'Content-Type': 'application/json'},
      body: utf8.encode(json.encode(data)),
    );
    print(response.body);
    if (response.statusCode == 200) {
      var result = json.decode(utf8.decode(response.bodyBytes));
      print(result);
      return result['token'];
    } else {
      throw Exception();
    }
  }
}
