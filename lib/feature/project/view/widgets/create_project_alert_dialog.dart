import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/app/widgets/message_widget.dart';
import 'package:project_management_web_and_mobile/feature/project/model/create_project/create_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/provider/project_provider.dart';

class CreateProjectAlertDialog extends HookConsumerWidget {
  const CreateProjectAlertDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectNameController = useTextEditingController();
    final newProject = ref.watch(projectProvider);
    ref.listen<GenericState>(projectProvider, (previous, next) {
      next.whenOrNull(
        success: (data) {
          if (data is CreateProjectResponse) {
            Navigator.of(context).pop();
            ref.read(projectProvider.notifier).getProjectList();
          }
        },
        error: (errMessage) {
          Navigator.of(context).pop();
        },
      );
    });
    return AlertDialog(
      title: const Text('Create New Project'),
      content: CustomTextFormField(
        controller: projectNameController,
      ),
      actions: <Widget>[
        TextButton(
          child: newProject.maybeMap(
            orElse: () => const Text('Create'),
            loading: (type) {
              if (type is CreateProjectResponse) {
                return const CustomProgressIndicator(
                  dimension: 20,
                );
              } else {
                return const Text('Create');
              }
            },
          ),
          onPressed: () {
            if (projectNameController.text.isEmpty) {
              showErrorInfo(context, 'Project name cannot be empty');
            } else {
              ref
                  .read(projectProvider.notifier)
                  .createProject(projectNameController.text);
            }
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
