import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:project_management_web_and_mobile/app/routing/route_guard.dart';
import 'package:project_management_web_and_mobile/app/routing/routes.dart';
import 'package:project_management_web_and_mobile/feature/auth/view/auth_screen.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/view/dashboard_screen.dart';
import 'package:project_management_web_and_mobile/feature/project/view/projects_screen.dart';
import 'package:project_management_web_and_mobile/feature/settings/view/change_password_screen.dart';
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
      path: '/',
      name: 'DashboardRouter',
      page: EmptyRouterPage,
      guards: [RouteGuard],
      children: [
        AutoRoute(
          path: '',
          page: DashboardScreen,
          children: [
            AutoRoute(
              path: Routes.projectsRoute,
              page: ProjectsScreen,
            ),
            AutoRoute(
              path: Routes.tasksRoute,
              page: TasksScreen,
            ),
            AutoRoute(
              path: Routes.settingsRoute,
              name: 'SettingsRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: '',
                  page: SettingsScreen,
                ),
                AutoRoute(
                  path: Routes.changePasswordRoute,
                  page: ChangePasswordScreen,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
