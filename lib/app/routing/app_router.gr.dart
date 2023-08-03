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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../feature/auth/view/auth_screen.dart' as _i1;
import '../../feature/project/view/project_list_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(key: args.key),
      );
    },
    ProjectListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ProjectListScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          AuthRoute.name,
          path: '/login',
        ),
        _i3.RouteConfig(
          ProjectListRoute.name,
          path: '/projects',
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i3.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i4.Key? key})
      : super(
          AuthRoute.name,
          path: '/login',
          args: AuthRouteArgs(key: key),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProjectListScreen]
class ProjectListRoute extends _i3.PageRouteInfo<void> {
  const ProjectListRoute()
      : super(
          ProjectListRoute.name,
          path: '/projects',
        );

  static const String name = 'ProjectListRoute';
}
