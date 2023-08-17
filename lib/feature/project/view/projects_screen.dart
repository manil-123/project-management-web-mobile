import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/app/widgets/message_widget.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list_response.dart';
import 'package:project_management_web_and_mobile/feature/project/provider/project_provider.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsScreen extends StatefulHookConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  ConsumerState<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends ConsumerState<ProjectsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Get the current route name from the RouteData
      final currentRouteName = context.routeData.name;
      // Map route names to their corresponding indices
      final routeIndices = {
        ProjectsRoute.name: 0,
        TasksRoute.name: 1,
        SettingsRoute.name: 2,
      };

      // Update the selectedScreenProvider based on the current route
      if (routeIndices.containsKey(currentRouteName)) {
        ref.read(selectedScreenProvider.notifier).state =
            routeIndices[currentRouteName]!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectListModel = ref.watch(projectProvider);
    return Scaffold(
      floatingActionButton: _FloatingActionButton(
        onTap: _createProjectAlertDialog,
      ),
      body: projectListModel.when(
        initial: () => const SizedBox(),
        loading: () => const CustomProgressIndicator(),
        success: (successValue) {
          if (successValue is List<ProjectModel>) {
            return _projectsList(successValue);
          } else {
            return const SizedBox();
          }
        },
        error: (error) {
          return Center(
            child: Text(error),
          );
        },
      ),
    );
  }

  Widget _projectsList(List<ProjectModel> projectsList) {
    return ScreenTypeLayout.builder(
      desktop: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Projects',
            style: AppTextStyle.boldText20.copyWith(
              fontSize: 30,
            ),
          ).pB(30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final project in projectsList)
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 80,
                    maxWidth: MediaQuery.sizeOf(context).width * 0.2,
                    minWidth: 100,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        project.projectName,
                        style: AppTextStyle.semiBoldText16.copyWith(
                          color: Colors.white,
                        ),
                      ).pXY(20, 20),
                    ),
                  ).pR(30),
                ),
            ],
          ),
        ],
      ).pXY(40, 40),
      mobile: (_) => Container(),
    );
  }

  Future<void> _createProjectAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return const CreateProjectAlertDialog();
      },
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    required this.onTap,
  });

  final Future<void> Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) {
        return FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: onTap,
          child: Text(
            '+',
            style: AppTextStyle.boldText20.copyWith(
              color: Colors.white,
            ),
          ),
        );
      },
      desktop: (_) {
        return InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            child: Text(
              'Create Project',
              style: AppTextStyle.boldText14.copyWith(
                color: Colors.white,
              ),
            ).pXY(12, 12),
          ),
        ).pXY(
          20,
          20,
        );
      },
    );
  }
}

class CreateProjectAlertDialog extends HookConsumerWidget {
  const CreateProjectAlertDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectNameController = useTextEditingController();
    return AlertDialog(
      title: const Text('Create New Project'),
      content: CustomTextFormField(
        controller: projectNameController,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Create'),
          onPressed: () {
            if (projectNameController.text.isEmpty) {
              showErrorInfo(context, 'Project name cannot be empty');
            } else {}
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
