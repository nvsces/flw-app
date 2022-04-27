import 'dart:convert';

import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:flw_app/profile/domain/repository/profile_repository.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepositoryApi extends ProfileRepository {
  @override
  Future<ProfileModel> fetchInfo() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    const host = "http://45.67.59.215:8000";
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
      result['photo_url'] =
          'https://sun9-38.userapi.com/s/v1/if2/6xM6omCHAoTBlOaQU9ZhXxv6w8gVzjb3M6BiugXiOWH8tuxAfWWXoEhO_OgHVM58FQ23dqC6RX5ZEC-n3s5LaJig.jpg?size=1620x2160&quality=96&type=album';
      return ProfileModel.fromMap(result);
    } else {
      throw Exception();
    }
  }
}
