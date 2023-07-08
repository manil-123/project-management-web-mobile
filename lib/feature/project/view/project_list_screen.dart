import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/feature/project/view/project_content_screen.dart';
import 'package:project_management_web_and_mobile/feature/project/view/project_drawer.dart';

class ProjectListScreen extends StatelessWidget {
  const ProjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width,
          maxHeight: MediaQuery.sizeOf(context).height,
        ),
        child: const Row(
          children: [
            Expanded(
              flex: 1,
              child: ProjectDrawer(),
            ),
            Flexible(
              flex: 5,
              child: ProjectContentScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
