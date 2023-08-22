import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/feature/auth/repository/auth_repository.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/repository/dashboard_repository.dart';
import 'package:project_management_web_and_mobile/feature/project/repository/project_repository.dart';
import 'package:project_management_web_and_mobile/feature/settings/repository/settings_repository.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    return AuthRepositoryImpl(
      restClient: ref.watch(restClientProvider),
    );
  },
);

final dashboardRepositoryProvider = Provider<DashboardRepository>(
  (ref) {
    return DashboardRepositoryImpl(
      restClient: ref.watch(restClientProvider),
    );
  },
);

final projectRepositoryProvider = Provider<ProjectRepository>(
  (ref) {
    return ProjectRepositoryImpl(
      restClient: ref.watch(restClientProvider),
    );
  },
);

final settingsRepositoryProvider = Provider<SettingsRepository>(
  (ref) {
    return SettingsRepositoryImpl(
      restClient: ref.watch(restClientProvider),
    );
  },
);
