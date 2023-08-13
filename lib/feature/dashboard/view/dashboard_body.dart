import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/constants/app_colors.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/provider/dashboard_provider.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardBody extends ConsumerWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardInfo =
        ref.watch<GenericState<DashboardInfo>>(dashboardProvider);

    return dashboardInfo.when(
      initial: () => const SizedBox(),
      loading: () => const CustomProgressIndicator(),
      success: (dashboardInfo) {
        return DashboardRow(
          dashboardInfo: dashboardInfo,
        ).pXY(16, 16);
      },
      error: (error) {
        return Center(
          child: Text(error),
        );
      },
    );
  }
}

class DashboardRow extends StatelessWidget {
  const DashboardRow({
    super.key,
    required this.dashboardInfo,
  });
  final DashboardInfo dashboardInfo;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DashboardInfoWidget(
              title: 'Total Projects',
              value: dashboardInfo.totalProjects.toString(),
            ),
            DashboardInfoWidget(
              title: 'Total Sprints',
              value: dashboardInfo.totalSprints.toString(),
            ),
            DashboardInfoWidget(
              title: 'Total Tickets',
              value: dashboardInfo.totalTickets.toString(),
            ),
            DashboardInfoWidget(
              title: 'Total Members',
              value: dashboardInfo.totalMembers.toString(),
            ),
          ],
        );
      },
      mobile: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardInfoWidget(
                  title: 'Total Projects',
                  value: dashboardInfo.totalProjects.toString(),
                  isMobile: true,
                ),
                DashboardInfoWidget(
                  title: ' Total Sprints  ',
                  value: dashboardInfo.totalSprints.toString(),
                  isMobile: true,
                ),
              ],
            ).pY(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardInfoWidget(
                  title: 'Total Tickets  ',
                  value: dashboardInfo.totalTickets.toString(),
                  isMobile: true,
                ),
                DashboardInfoWidget(
                  title: 'Total Members',
                  value: dashboardInfo.totalMembers.toString(),
                  isMobile: true,
                ),
              ],
            ).pY(20),
          ],
        );
      },
    );
  }
}

class DashboardInfoWidget extends StatelessWidget {
  const DashboardInfoWidget({
    super.key,
    required this.title,
    required this.value,
    this.isMobile = false,
  });
  final String title;
  final String value;
  final bool? isMobile;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 110,
        minHeight: 100,
        maxWidth: MediaQuery.sizeOf(context).width * 0.4,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.kWebLightColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: isMobile != null && isMobile!
                  ? AppTextStyle.boldText14.copyWith(
                      color: Colors.white,
                    )
                  : AppTextStyle.boldText20.copyWith(
                      color: Colors.white,
                    ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              value,
              style: isMobile != null && isMobile!
                  ? AppTextStyle.boldText14.copyWith(
                      color: Colors.white,
                    )
                  : AppTextStyle.boldText20.copyWith(
                      color: Colors.white,
                    ),
            ),
          ],
        ).pXY(20, 20),
      ),
    );
  }
}
