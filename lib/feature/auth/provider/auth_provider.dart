import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:project_management_web_and_mobile/feature/auth/repository/auth_repository.dart';
import 'package:project_management_web_and_mobile/providers/repository_providers.dart';

final authProvider = StateNotifierProvider.autoDispose<LoginNotifier,
    GenericState<AuthResponse>>(
  (ref) => LoginNotifier(ref.watch(authRepositoryProvider)),
);

class LoginNotifier extends StateNotifier<GenericState<AuthResponse>> {
  LoginNotifier(
    this._authRepository,
  ) : super(
          const GenericState.initial(),
        );

  final AuthRepository _authRepository;

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
        state = GenericState.success(
          loginModel,
        );
      },
    );
  }
}
