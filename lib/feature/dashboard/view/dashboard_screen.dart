import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final innerRouterKey = GlobalKey<AutoRouterState>();

  @override
  Widget build(BuildContext context) {
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
            Flexible(
              flex: 5,
              child: AutoRouter(
                key: innerRouterKey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
