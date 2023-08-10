import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/repository/dashboard_repository.dart';
import 'package:project_management_web_and_mobile/providers/repository_providers.dart';

final dashboardProvider = StateNotifierProvider.autoDispose<DashboardNotifier,
    GenericState<DashboardInfo>>(
  (ref) => DashboardNotifier(
    ref.watch(dashboardRepositoryProvider),
  ),
);

class DashboardNotifier extends StateNotifier<GenericState<DashboardInfo>> {
  DashboardNotifier(
    this._dashboardRepository,
  ) : super(
          const GenericState.initial(),
        ) {
    getDashboardInfo();
  }

  final DashboardRepository _dashboardRepository;

  Future<void> getDashboardInfo() async {
    state = const GenericState.loading();
    final result = await _dashboardRepository.getDashboardInfo();
    result.fold(
      (failure) {
        state = GenericState.error(
          failure.errorMessage,
        );
      },
      (dashboardInfoResponse) async {
        state = GenericState.success(
          dashboardInfoResponse.data,
        );
      },
    );
  }
}
