import 'package:auto_route/auto_route.dart';
import 'package:project_management_web_and_mobile/app/routing/routes.dart';
import 'package:project_management_web_and_mobile/feature/auth/view/auth_screen.dart';
import 'package:project_management_web_and_mobile/feature/project/view/project_list_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: Routes.loginRoute,
      page: AuthScreen,
      initial: true,
    ),
    AutoRoute(
      path: Routes.projectsRoute,
      page: ProjectListScreen,
    ),
  ],
)
class $AppRouter {}
