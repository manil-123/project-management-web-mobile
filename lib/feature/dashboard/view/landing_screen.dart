import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_drawer.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final innerRouterKey = GlobalKey<AutoRouterState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      innerRouterKey.currentState!.controller?.replace(
        const DashboardRoute(),
      );
    });
  }

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
