import 'package:flw_app/profile/domain/model/profile_model.dart';

abstract class ProfileRepository {
  Future<ProfileModel> fetchInfo();
}
