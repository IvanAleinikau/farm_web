// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../page/culture/culture_page.dart' as _i4;
import '../page/home/home_page.dart' as _i1;
import '../page/seeding_plan/seeding_plan_page.dart' as _i5;
import '../page/task/task_page.dart' as _i3;
import '../page/weather/weather_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    WeatherRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.WeatherPage(),
          opaque: true,
          barrierDismissible: false);
    },
    TaskRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.TaskPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CultureRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.CulturePage(),
          opaque: true,
          barrierDismissible: false);
    },
    SeedingPlanRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SeedingPlanPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(WeatherRoute.name, path: '/weather'),
        _i6.RouteConfig(TaskRoute.name, path: '/task'),
        _i6.RouteConfig(CultureRoute.name, path: '/culture'),
        _i6.RouteConfig(SeedingPlanRoute.name, path: '/seeding_plan')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.WeatherPage]
class WeatherRoute extends _i6.PageRouteInfo<void> {
  const WeatherRoute() : super(WeatherRoute.name, path: '/weather');

  static const String name = 'WeatherRoute';
}

/// generated route for
/// [_i3.TaskPage]
class TaskRoute extends _i6.PageRouteInfo<void> {
  const TaskRoute() : super(TaskRoute.name, path: '/task');

  static const String name = 'TaskRoute';
}

/// generated route for
/// [_i4.CulturePage]
class CultureRoute extends _i6.PageRouteInfo<void> {
  const CultureRoute() : super(CultureRoute.name, path: '/culture');

  static const String name = 'CultureRoute';
}

/// generated route for
/// [_i5.SeedingPlanPage]
class SeedingPlanRoute extends _i6.PageRouteInfo<void> {
  const SeedingPlanRoute()
      : super(SeedingPlanRoute.name, path: '/seeding_plan');

  static const String name = 'SeedingPlanRoute';
}
