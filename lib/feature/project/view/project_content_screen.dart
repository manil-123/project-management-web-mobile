import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/feature/project/view/project_drawer.dart';
import 'package:project_management_web_and_mobile/feature/settings/view/settings_screen.dart';

class ProjectContentScreen extends HookConsumerWidget {
  const ProjectContentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedScreenIndex = ref.watch(selectedScreenProvider);

    Widget bodyWidget;
    switch (selectedScreenIndex) {
      case 0:
        bodyWidget = const Center(
          child: Text('Dashboard Screen'),
        );
        break;
      case 1:
        bodyWidget = const Center(
          child: Text('Tasks Screen'),
        );
        break;
      case 2:
        bodyWidget = const SettingsScreen();
        break;
      default:
        bodyWidget = const Center(
          child: Text('Default Screen'),
        );
    }
    return bodyWidget;
  }
}
