import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/project/model/create_project/create_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/delete_project/delete_project_response.dart';
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

  Future<void> createProject(String projectName) async {
    state = const GenericState<CreateProjectResponse>.loading();
    final result = await _projectRepository.createProject(projectName);
    result.fold(
      (failure) {
        state = GenericState<CreateProjectResponse>.error(
          failure.errorMessage,
        );
      },
      (createProjectResponse) {
        state = GenericState<CreateProjectResponse>.success(
          createProjectResponse,
        );
      },
    );
  }

  Future<void> deleteProject(String projectId) async {
    state = const GenericState<DeleteProjectResponse>.loading();
    final result = await _projectRepository.deleteProject(projectId);
    result.fold(
      (failure) {
        state = GenericState<DeleteProjectResponse>.error(
          failure.errorMessage,
        );
      },
      (deleteProjectResponse) {
        state = GenericState<DeleteProjectResponse>.success(
          deleteProjectResponse,
        );
      },
    );
  }
}
