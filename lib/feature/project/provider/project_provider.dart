import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';
import 'package:project_management_web_and_mobile/feature/project/repository/project_repository.dart';
import 'package:project_management_web_and_mobile/providers/repository_providers.dart';

final projectProvider =
    StateNotifierProvider.autoDispose<ProjectNotifier, GenericState>(
  (ref) => ProjectNotifier(
    ref.watch(projectRepositoryProvider),
  ),
);

class ProjectNotifier extends StateNotifier<GenericState> {
  ProjectNotifier(
    this._projectRepository,
  ) : super(
          const GenericState.initial(),
        ) {
    getProjectList();
  }

  final ProjectRepository _projectRepository;

  Future<void> getProjectList() async {
    state = const GenericState<List<ProjectModel>>.loading();
    final result = await _projectRepository.getProjectList();
    result.fold(
      (failure) {
        state = GenericState<List<ProjectModel>>.error(
          failure.errorMessage,
        );
      },
      (projectListResponse) async {
        state = GenericState<List<ProjectModel>>.success(
          projectListResponse.data,
        );
      },
    );
  }
}
