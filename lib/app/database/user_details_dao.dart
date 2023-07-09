import 'dart:convert';

import 'package:project_management_web_and_mobile/app/database/secure_storage.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';

class UserDetailsDao {
  final SecureStorage _secureStorage;

  UserDetailsDao(this._secureStorage);

  static const keyUserDetails = "userDetails";

  Future<void> saveUserDetails(UserModel userDetails) async {
    final value = json.encode(
      userDetails.toJson(),
    );
    await _secureStorage.saveData(keyUserDetails, value);
  }

  Future<UserModel?> getUserDetails() async {
    final value = await _secureStorage.getData(keyUserDetails);
    return value != null
        ? UserModel.fromJson(
            json.decode(value),
          )
        : null;
  }

  Future<void> clear() async {
    await _secureStorage.delete(keyUserDetails);
  }
}
