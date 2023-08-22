// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../../feature/auth/view/auth_screen.dart' as _i1;
import '../../feature/dashboard/view/dashboard_screen.dart' as _i3;
import '../../feature/project/view/projects_screen.dart' as _i4;
import '../../feature/settings/view/change_password_screen.dart' as _i7;
import '../../feature/settings/view/settings_screen.dart' as _i6;
import '../../feature/settings/view/tasks_screen.dart' as _i5;
import 'route_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.routeGuard,
  }) : super(navigatorKey);

  final _i10.RouteGuard routeGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(key: args.key),
        maintainState: false,
      );
    },
    DashboardRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardScreen(),
      );
    },
    ProjectsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProjectsScreen(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TasksScreen(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ChangePasswordScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          AuthRoute.name,
          path: '/login',
        ),
        _i8.RouteConfig(
          DashboardRouter.name,
          path: '/',
          guards: [routeGuard],
          children: [
            _i8.RouteConfig(
              DashboardRoute.name,
              path: '',
              parent: DashboardRouter.name,
              children: [
                _i8.RouteConfig(
                  ProjectsRoute.name,
                  path: 'projects',
                  parent: DashboardRoute.name,
                ),
                _i8.RouteConfig(
                  TasksRoute.name,
                  path: 'tasks',
                  parent: DashboardRoute.name,
                ),
                _i8.RouteConfig(
                  SettingsRouter.name,
                  path: 'settings',
                  parent: DashboardRoute.name,
                  children: [
                    _i8.RouteConfig(
                      SettingsRoute.name,
                      path: '',
                      parent: SettingsRouter.name,
                    ),
                    _i8.RouteConfig(
                      ChangePasswordRoute.name,
                      path: 'changePassword',
                      parent: SettingsRouter.name,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i8.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i9.Key? key})
      : super(
          AuthRoute.name,
          path: '/login',
          args: AuthRouteArgs(key: key),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class DashboardRouter extends _i8.PageRouteInfo<void> {
  const DashboardRouter({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardRouter';
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.ProjectsScreen]
class ProjectsRoute extends _i8.PageRouteInfo<void> {
  const ProjectsRoute()
      : super(
          ProjectsRoute.name,
          path: 'projects',
        );

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [_i5.TasksScreen]
class TasksRoute extends _i8.PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: 'tasks',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i7.ChangePasswordScreen]
class ChangePasswordRoute extends _i8.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: 'changePassword',
        );

  static const String name = 'ChangePasswordRoute';
}
