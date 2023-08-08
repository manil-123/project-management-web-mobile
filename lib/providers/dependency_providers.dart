import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/api/dio_config.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/database/login_dao.dart';
import 'package:project_management_web_and_mobile/app/database/secure_storage.dart';
import 'package:project_management_web_and_mobile/app/database/user_details_dao.dart';

final restClientProvider = Provider<RestClient>((ref) {
  return RestClient(ref.watch(dioInstanceProvider));
});
final secureStorageProvider = Provider<SecureStorage>(
  (ref) => SecureStorage(),
);

final userDaoProvider = Provider<UserDetailsDao>((ref) {
  return UserDetailsDao(
    ref.watch(secureStorageProvider),
  );
});

final loginDaoProvider = Provider<LoginDao>((ref) {
  return LoginDao(
    ref.watch(secureStorageProvider),
  );
});
