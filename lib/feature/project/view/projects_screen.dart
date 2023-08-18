import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';
import 'package:project_management_web_and_mobile/feature/project/provider/project_provider.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/create_project_alert_dialog.dart';

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
      desktop: (_) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Projects',
              style: AppTextStyle.boldText20.copyWith(
                fontSize: 30,
              ),
            ).pB(30),
            Wrap(
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
                      child: ExpansionTile(
                        title: Text(
                          project.projectName,
                          style: AppTextStyle.semiBoldText16.copyWith(
                            color: Colors.white,
                          ),
                        ).pXY(20, 20),
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        childrenPadding: const EdgeInsets.only(bottom: 16),
                        children: [
                          _projectDetail(
                            'Total Members',
                            project.members.length.toString(),
                          ),
                          _projectDetail(
                            'Total Sprints',
                            project.sprints.length.toString(),
                          ),
                          _projectDetail(
                            'Total Tickets',
                            '${calculateTotalTickets(project.sprints)}',
                          ),
                        ],
                      ),
                    ).pR(30).pT(30),
                  ),
              ],
            ),
          ],
        ).pXY(40, 40),
      ),
      mobile: (_) => Container(),
    );
  }

  int calculateTotalTickets(List<SprintModel> sprints) {
    int totalTickets = 0;
    for (final sprint in sprints) {
      totalTickets += sprint.tickets.length;
    }
    return totalTickets;
  }

  Widget _projectDetail(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: AppTextStyle.boldText14.copyWith(
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: AppTextStyle.boldText14.copyWith(
            color: Colors.white,
          ),
        ),
      ],
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
