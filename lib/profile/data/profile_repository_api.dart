import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:flw_app/profile/domain/model/trip_model.dart';
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
      return ProfileModel.fromMap(result);
    } else {
      throw Exception();
    }
  }

  @override
  Future<String> createTrip(TripModel trip) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    const host = "http://45.67.59.215:8000";
    var url = Uri.parse('$host/api/items/create');

    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'authorization':
            'Bearer ' + (sharedPreferences.getString('token') ?? ''),
      },
      body: trip.toJson(),
    );
    print(response.body);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Поездка успешно создана",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      return '0';
    } else {
      return '1';
    }
  }
}
