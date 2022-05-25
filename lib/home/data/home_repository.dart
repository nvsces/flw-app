import 'dart:convert';

import 'package:flw_app/profile/domain/model/trip_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../domain/models/trip.dart';

class HomeRepository {
  Future<List<Trip>> getAllTrips() async {
    const host = "http://45.67.59.215:8000";
    var url = Uri.parse('$host/api/items/');

    var response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    print(response.body);
    if (response.statusCode == 200) {
      var result = json.decode(utf8.decode(response.bodyBytes)) as List;
      return result.map((e) => Trip.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
