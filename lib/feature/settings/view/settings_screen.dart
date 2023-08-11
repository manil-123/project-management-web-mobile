import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';

class SettingsScreen extends StatefulHookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
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
    return const Center(
      child: Text('Settings Screen'),
    );
  }
}
