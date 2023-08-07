import 'package:auto_route/auto_route.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/utils/service/auth_service.dart';

class RouteGuard extends AutoRedirectGuard {
  final AuthService authService;
  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }
  @override
  Future<bool> canNavigate(RouteMatch route) {
    throw UnimplementedError();
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    print(authService.authenticated);
    if (authService.authenticated) {
      return resolver.next(true);
    } else {
      router.push(AuthRoute());
    }
  }
}
