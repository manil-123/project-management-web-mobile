import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/database/login_dao.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';

class AuthService extends ChangeNotifier {
  final LoginDao loginDao;

  AuthService(this.loginDao);

  Future<bool> get authStatus async => await loginDao.getLoginInfo() ?? false;

  Future<void> saveAuthStatus(bool value) async {
    await loginDao.saveLoginInfo(value);
    notifyListeners();
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(
    ref.watch(loginDaoProvider),
  );
});
