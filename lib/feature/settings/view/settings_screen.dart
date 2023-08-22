import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * .5,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            SettingsItem(
              onTap: () {},
              title: 'Change Password',
            ),
            SettingsItem(
              onTap: () {},
              title: 'Settings 1',
            ),
            SettingsItem(
              onTap: () {},
              title: 'Settings 2',
            ),
            SettingsItem(
              onTap: () {},
              title: 'Settings 3',
            ),
            const SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.onTap,
    required this.title,
  });

  final void Function() onTap;
  final String title;

  Widget buildSettingsItem(BuildContext context, BoxConstraints constraints) {
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: constraints,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            title,
            style: AppTextStyle.semiBoldText14,
          ).pXY(MediaQuery.sizeOf(context).width * 0.2, 20),
        ),
      ),
    ).pB(20);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => buildSettingsItem(
        context,
        BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * .9,
          minWidth: MediaQuery.sizeOf(context).width * .5,
        ),
      ),
      mobile: (_) => buildSettingsItem(
        context,
        BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * .9,
          minWidth: MediaQuery.sizeOf(context).width * .8,
        ),
      ),
    );
  }
}
