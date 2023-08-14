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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../../feature/auth/view/auth_screen.dart' as _i1;
import '../../feature/dashboard/view/dashboard_screen.dart' as _i3;
import '../../feature/project/view/projects_screen.dart' as _i4;
import '../../feature/settings/view/settings_screen.dart' as _i6;
import '../../feature/settings/view/tasks_screen.dart' as _i5;
import 'route_guard.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter({
    _i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
    required this.routeGuard,
  }) : super(navigatorKey);

  final _i9.RouteGuard routeGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(key: args.key),
        maintainState: false,
      );
    },
    DashboardRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardScreen(),
      );
    },
    ProjectsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProjectsScreen(),
        maintainState: false,
      );
    },
    TasksRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TasksScreen(),
        maintainState: false,
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
        maintainState: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AuthRoute.name,
          path: '/login',
        ),
        _i7.RouteConfig(
          DashboardRouter.name,
          path: '/',
          guards: [routeGuard],
          children: [
            _i7.RouteConfig(
              DashboardRoute.name,
              path: '',
              parent: DashboardRouter.name,
              children: [
                _i7.RouteConfig(
                  ProjectsRoute.name,
                  path: 'projects',
                  parent: DashboardRoute.name,
                ),
                _i7.RouteConfig(
                  TasksRoute.name,
                  path: 'tasks',
                  parent: DashboardRoute.name,
                ),
                _i7.RouteConfig(
                  SettingsRoute.name,
                  path: 'settings',
                  parent: DashboardRoute.name,
                ),
              ],
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i7.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i8.Key? key})
      : super(
          AuthRoute.name,
          path: '/login',
          args: AuthRouteArgs(key: key),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class DashboardRouter extends _i7.PageRouteInfo<void> {
  const DashboardRouter({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardRouter';
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.ProjectsScreen]
class ProjectsRoute extends _i7.PageRouteInfo<void> {
  const ProjectsRoute()
      : super(
          ProjectsRoute.name,
          path: 'projects',
        );

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [_i5.TasksScreen]
class TasksRoute extends _i7.PageRouteInfo<void> {
  const TasksRoute()
      : super(
          TasksRoute.name,
          path: 'tasks',
        );

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
