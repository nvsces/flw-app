import 'dart:convert';

import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:flw_app/profile/domain/repository/profile_repository.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepositoryApi extends ProfileRepository {
  @override
  Future<ProfileModel> fetchInfo() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    const host = "http://45.67.59.215:8080";
    var url = Uri.parse('$host/api/profile');

    var response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'authorization':
            'Bearer ' + (sharedPreferences.getString('token') ?? ''),
      },
    );
    print(response.body);
    if (response.statusCode == 200) {
      var result = json.decode(utf8.decode(response.bodyBytes));
      return ProfileModel.fromMap(result);
    } else {
      throw Exception();
    }
  }
}
