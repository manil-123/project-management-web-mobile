import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  static final _secureStorage = FlutterSecureStorage(
    aOptions: _getAndroidOptions(),
  );

  Future saveData(String key, String data) async {
    await _secureStorage.write(key: key, value: data);
  }

  Future<String?> getData(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future delete(String key) async {
    await _secureStorage.delete(key: key);
  }

  void clear() {
    _secureStorage.deleteAll();
  }
}
