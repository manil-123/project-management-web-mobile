import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/database/user_details_dao.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:project_management_web_and_mobile/feature/auth/repository/auth_repository.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';
import 'package:project_management_web_and_mobile/providers/repository_providers.dart';

final authProvider = StateNotifierProvider.autoDispose<LoginNotifier,
    GenericState<AuthResponse>>(
  (ref) => LoginNotifier(
    ref.watch(authRepositoryProvider),
    ref.watch(userDaoProvider),
  ),
);

class LoginNotifier extends StateNotifier<GenericState<AuthResponse>> {
  LoginNotifier(
    this._authRepository,
    this._userDetailsDao,
  ) : super(
          const GenericState.initial(),
        );

  final AuthRepository _authRepository;
  final UserDetailsDao _userDetailsDao;

  Future<void> login(String username, String password) async {
    state = const GenericState.loading();
    final result = await _authRepository.login(
      username,
      password,
    );
    result.fold(
      (failure) {
        state = GenericState.error(
          failure.errorMessage,
        );
      },
      (loginModel) async {
        _userDetailsDao.saveUserDetails(loginModel.data!);
        state = GenericState.success(
          loginModel,
        );
      },
    );
  }

  Future<void> register(String username, String password) async {
    state = const GenericState.loading();
    final result = await _authRepository.register(
      username,
      password,
    );
    result.fold(
      (failure) {
        state = GenericState.error(
          failure.errorMessage,
        );
      },
      (loginModel) async {
        state = GenericState.success(
          loginModel,
        );
      },
    );
  }

  void logOut() async {
    await _userDetailsDao.clear();
  }
}
