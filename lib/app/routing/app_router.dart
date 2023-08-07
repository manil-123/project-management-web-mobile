import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:project_management_web_and_mobile/app/routing/route_guard.dart';
import 'package:project_management_web_and_mobile/app/routing/routes.dart';
import 'package:project_management_web_and_mobile/feature/auth/view/auth_screen.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/landing_screen.dart';
import 'package:project_management_web_and_mobile/feature/settings/view/dashboard_screen.dart';
import 'package:project_management_web_and_mobile/feature/settings/view/settings_screen.dart';
import 'package:project_management_web_and_mobile/feature/settings/view/tasks_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: Routes.loginRoute,
      page: AuthScreen,
      initial: true,
      maintainState: false,
    ),
    AutoRoute(
      path: '/landing',
      name: 'LandingRouter',
      page: EmptyRouterPage,
      guards: [RouteGuard],
      children: [
        AutoRoute(
          path: '',
          page: LandingScreen,
          children: [
            AutoRoute(
              path: Routes.dashboardRoute,
              page: DashboardScreen,
            ),
            AutoRoute(
              path: Routes.tasksRoute,
              page: TasksScreen,
            ),
            AutoRoute(
              path: Routes.settingsRoute,
              page: SettingsScreen,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
