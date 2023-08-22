import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/database/user_details_dao.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/settings/model/change_password_response.dart';
import 'package:project_management_web_and_mobile/feature/settings/repository/settings_repository.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';
import 'package:project_management_web_and_mobile/providers/repository_providers.dart';

final settingsProvider = StateNotifierProvider.autoDispose<SettingsNotifier,
    GenericState<ChangePasswordResponse>>(
  (ref) => SettingsNotifier(
    ref.watch(settingsRepositoryProvider),
    ref.watch(userDaoProvider),
  ),
);

class SettingsNotifier
    extends StateNotifier<GenericState<ChangePasswordResponse>> {
  SettingsNotifier(
    this._settingsRepository,
    this._userDetailsDao,
  ) : super(
          const GenericState.initial(),
        );

  final SettingsRepository _settingsRepository;
  final UserDetailsDao _userDetailsDao;

  Future<void> changePassword(String oldPassword, String newPassword) async {
    state = const GenericState.loading();
    final currentUser = await _userDetailsDao.getUserDetails();
    if (currentUser == null) {
      state = const GenericState.error(
        'Logged in user details not found !!!',
      );
    }
    final result = await _settingsRepository.changePassword(
      currentUser!.userId,
      oldPassword,
      newPassword,
    );
    result.fold(
      (failure) {
        state = GenericState.error(
          failure.errorMessage,
        );
      },
      (changePasswordResponse) async {
        state = GenericState.success(
          changePasswordResponse,
        );
      },
    );
  }
}
