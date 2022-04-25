import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/di/get_it.dart';
import 'package:farm_web/presentation/bloc/app_bar/app_bar_cubit.dart';
import 'package:farm_web/presentation/bloc/auth/login_cubit.dart';
import 'package:farm_web/presentation/bloc/auth/register_cubit.dart';
import 'package:farm_web/presentation/bloc/culture/culture_cubit.dart';
import 'package:farm_web/presentation/bloc/culture_detailed/culture_detailed_cubit.dart';
import 'package:farm_web/presentation/bloc/home/home_cubit.dart';
import 'package:farm_web/presentation/bloc/navigation/navigation_cubit.dart';
import 'package:farm_web/presentation/bloc/task/task_cubit.dart';
import 'package:farm_web/presentation/bloc/weather/weather_cubit.dart';
import 'package:farm_web/presentation/model/culture.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt.setup();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(),
        ),
        BlocProvider<RegisterCubit>(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider<AppBarCubit>(
          create: (context) => AppBarCubit(),
        ),
        BlocProvider<TaskCubit>(
          create: (context) => TaskCubit(),
        ),
        BlocProvider<WeatherCubit>(
          create: (context) => WeatherCubit(),
        ),
        BlocProvider<CultureCubit>(
          create: (context) => CultureCubit(),
        ),
        BlocProvider<CultureDetailedCubit>(
          create: (context) => CultureDetailedCubit(emptyCulture),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior().copyWith(scrollbars: false),
        title: APP_NAME,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
