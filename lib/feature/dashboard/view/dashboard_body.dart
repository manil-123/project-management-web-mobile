import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/provider/dashboard_provider.dart';

class DashboardBody extends ConsumerWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardInfo =
        ref.watch<GenericState<DashboardInfo>>(dashboardProvider);

    return dashboardInfo.when(
        initial: () => const SizedBox(),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        success: (dashboardInfo) {
          return Text(
            dashboardInfo.totalProjects.toString(),
          );
        },
        error: (error) {
          return Center(
            child: Text(error),
          );
        });
  }
}
