import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/feature/auth/repository/auth_repository.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    restClient: ref.watch(restClientProvider),
  );
});
