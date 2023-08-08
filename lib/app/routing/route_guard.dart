import 'package:auto_route/auto_route.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/utils/service/auth_service.dart';

class RouteGuard extends AutoRedirectGuard {
  final AuthService authService;
  RouteGuard(this.authService) {
    authService.addListener(() async {
      final authStatus = await authService.authStatus;
      if (!authStatus) {
        reevaluate();
      }
    });
  }
  @override
  Future<bool> canNavigate(RouteMatch route) async {
    final authStatus = await authService.authStatus;
    if (authStatus) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authStatus = await authService.authStatus;
    if (authStatus) {
      return resolver.next(true);
    } else {
      router.push(
        AuthRoute(),
      );
    }
  }
}
