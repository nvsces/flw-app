import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:flw_app/profile/domain/model/trip_model.dart';

abstract class ProfileRepository {
  Future<ProfileModel> fetchInfo();

  Future<String> createTrip(TripModel trip);
}
