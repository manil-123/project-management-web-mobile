import 'package:project_management_web_and_mobile/app/database/secure_storage.dart';

class LoginDao {
  final SecureStorage _secureStorage;

  LoginDao(this._secureStorage);

  static const keyLoginInfo = "login";

  Future<void> saveLoginInfo(bool canLogin) async {
    await _secureStorage.saveData(keyLoginInfo, canLogin.toString());
  }

  Future<bool?> getLoginInfo() async {
    final value = await _secureStorage.getData(keyLoginInfo);
    if (value == null) {
      // Return false if keyLoginInfo is not available
      return false;
    } else {
      return value.toLowerCase() == 'true';
    }
  }

  Future<void> clear() async {
    await _secureStorage.delete(keyLoginInfo);
  }
}
