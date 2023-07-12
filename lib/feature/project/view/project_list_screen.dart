import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';

class ProjectListScreen extends StatelessWidget {
  const ProjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.8,
          maxHeight: MediaQuery.sizeOf(context).height * 0.8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projects',
              style: AppTextStyle.boldText20,
            )
          ],
        ),
      ),
    );
  }
}
