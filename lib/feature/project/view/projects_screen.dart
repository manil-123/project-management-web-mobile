import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';
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
      floatingActionButton: const _FloatingActionButton(),
      body: projectListModel.when(
        initial: () => const SizedBox(),
        loading: () => const CustomProgressIndicator(),
        success: (projectList) {
          return const SizedBox();
        },
        error: (error) {
          return Center(
            child: Text(error),
          );
        },
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) {
        return FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
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
          onTap: () {},
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
