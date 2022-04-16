import 'package:auto_route/auto_route.dart';
import 'package:farm_web/presentation/page/culture/culture_page.dart';
import 'package:farm_web/presentation/page/home/home_page.dart';
import 'package:farm_web/presentation/page/seeding_plan/seeding_plan_page.dart';
import 'package:farm_web/presentation/page/task/task_page.dart';
import 'package:farm_web/presentation/page/weather/weather_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(
    //   path: '/login',
    //   page: LoginPage,
    //   name: 'LoginRoute',
    //   initial: true,
    // ),
    CustomRoute(
      path: '/home',
      page: HomePage,
      name: 'HomeRoute',
      initial: true,
    ),
    CustomRoute(
      path: '/weather',
      page: WeatherPage,
      name: 'WeatherRoute',
    ),
    CustomRoute(
      path: '/task',
      page: TaskPage,
      name: 'TaskRoute',
    ),
    CustomRoute(
      path: '/culture',
      page: CulturePage,
      name: 'CultureRoute',
    ),
    CustomRoute(
      path: '/seeding_plan',
      page: SeedingPlanPage,
      name: 'SeedingPlanRoute',
    ),
  ],
)
class $AppRouter {}
