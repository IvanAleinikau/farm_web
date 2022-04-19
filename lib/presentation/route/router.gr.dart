// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../page/auth/login_page.dart' as _i1;
import '../page/auth/register_page.dart' as _i2;
import '../page/culture/culture_page.dart' as _i6;
import '../page/culture/widgets/culture_detailed.dart' as _i8;
import '../page/home/home_page.dart' as _i3;
import '../page/seeding_plan/seeding_plan_page.dart' as _i7;
import '../page/task/task_page.dart' as _i5;
import '../page/weather/weather_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.LoginPage(),
          opaque: true,
          barrierDismissible: false);
    },
    RegisterRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.RegisterPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    WeatherRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.WeatherPage(),
          opaque: true,
          barrierDismissible: false);
    },
    TaskRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.TaskPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CultureRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.CulturePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SeedingPlanRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.SeedingPlanPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CultureDetailedRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.CultureDetailed(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i9.RouteConfig(LoginRoute.name, path: '/login'),
        _i9.RouteConfig(RegisterRoute.name, path: '/register'),
        _i9.RouteConfig(HomeRoute.name, path: '/home'),
        _i9.RouteConfig(WeatherRoute.name, path: '/weather'),
        _i9.RouteConfig(TaskRoute.name, path: '/task'),
        _i9.RouteConfig(CultureRoute.name, path: '/culture'),
        _i9.RouteConfig(SeedingPlanRoute.name, path: '/seeding_plan'),
        _i9.RouteConfig(CultureDetailedRoute.name, path: '/culture_detailed')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.WeatherPage]
class WeatherRoute extends _i9.PageRouteInfo<void> {
  const WeatherRoute() : super(WeatherRoute.name, path: '/weather');

  static const String name = 'WeatherRoute';
}

/// generated route for
/// [_i5.TaskPage]
class TaskRoute extends _i9.PageRouteInfo<void> {
  const TaskRoute() : super(TaskRoute.name, path: '/task');

  static const String name = 'TaskRoute';
}

/// generated route for
/// [_i6.CulturePage]
class CultureRoute extends _i9.PageRouteInfo<void> {
  const CultureRoute() : super(CultureRoute.name, path: '/culture');

  static const String name = 'CultureRoute';
}

/// generated route for
/// [_i7.SeedingPlanPage]
class SeedingPlanRoute extends _i9.PageRouteInfo<void> {
  const SeedingPlanRoute()
      : super(SeedingPlanRoute.name, path: '/seeding_plan');

  static const String name = 'SeedingPlanRoute';
}

/// generated route for
/// [_i8.CultureDetailed]
class CultureDetailedRoute extends _i9.PageRouteInfo<void> {
  const CultureDetailedRoute()
      : super(CultureDetailedRoute.name, path: '/culture_detailed');

  static const String name = 'CultureDetailedRoute';
}
