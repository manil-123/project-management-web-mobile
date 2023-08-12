import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/app/widgets/message_widget.dart';
import 'package:project_management_web_and_mobile/feature/project/model/delete_project/delete_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';
import 'package:project_management_web_and_mobile/feature/project/provider/project_provider.dart';

class DeleteProjectAlertDialog extends HookConsumerWidget {
  const DeleteProjectAlertDialog({
    super.key,
    required this.projectModel,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deleteProject = ref.watch(projectProvider);

    ref.listen<GenericState>(projectProvider, (previous, next) {
      next.whenOrNull(
        success: (data) {
          if (data is DeleteProjectResponse) {
            Navigator.of(context).pop();
            ref.read(projectProvider.notifier).getProjectList();
          }
        },
        error: (errorMessage) {
          Navigator.of(context).pop();
          showErrorInfo(context, errorMessage);
        },
      );
    });
    return AlertDialog(
      title: Text('Delete project ${projectModel.projectName}'),
      actions: <Widget>[
        TextButton(
          child: deleteProject.maybeMap(
            orElse: () => const Text('Delete'),
            loading: (type) {
              return const CustomProgressIndicator(
                dimension: 20,
              );
            },
          ),
          onPressed: () {
            ref
                .read(projectProvider.notifier)
                .deleteProject(projectModel.projectId);
          },
        ),
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
