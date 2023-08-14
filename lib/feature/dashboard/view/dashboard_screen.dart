import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_body.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardScreen extends StatefulHookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final innerRouterKey = GlobalKey<AutoRouterState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final selectedScreenIndex = ref.watch(selectedScreenProvider);

    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: const Text(
              'Project Management',
            ),
          ),
          drawer: DashboardDrawer(
            contentRouter: innerRouterKey,
            scaffoldKey: _scaffoldKey,
          ),
          body: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width,
              maxHeight: MediaQuery.sizeOf(context).height,
            ),
            child: selectedScreenIndex == -1
                ? const DashboardBody()
                : AutoRouter(
                    key: innerRouterKey,
                  ),
          ),
        );
      },
      desktop: (context) {
        return Scaffold(
          body: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width,
              maxHeight: MediaQuery.sizeOf(context).height,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DashboardDrawer(
                    contentRouter: innerRouterKey,
                  ),
                ),
                selectedScreenIndex == -1
                    ? const Flexible(
                        flex: 5,
                        child: DashboardBody(),
                      )
                    : Flexible(
                        flex: 5,
                        child: AutoRouter(
                          key: innerRouterKey,
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
