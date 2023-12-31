import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/route_guard.dart';
import 'package:project_management_web_and_mobile/app/theme/theme_data.dart';
import 'package:project_management_web_and_mobile/utils/service/auth_service.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/routing/app_router.gr.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final container = ProviderContainer();
  late final _appRouter = AppRouter(
    routeGuard: RouteGuard(container.read(authServiceProvider)),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Project Management App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
