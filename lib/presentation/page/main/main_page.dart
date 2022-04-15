import 'package:farm_web/presentation/bloc/navigation/navigation_cubit.dart';
import 'package:farm_web/presentation/bloc/navigation/navigation_state.dart';
import 'package:farm_web/presentation/page/culture/culture_page.dart';
import 'package:farm_web/presentation/page/home/home_page.dart';
import 'package:farm_web/presentation/page/main/menu/farm_menu.dart';
import 'package:farm_web/presentation/page/main/menu/type_page.dart';
import 'package:farm_web/presentation/page/seeding_plan/seeding_plan_page.dart';
import 'package:farm_web/presentation/page/task/task_page.dart';
import 'package:farm_web/presentation/page/weather/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late NavigationCubit _cubit;

  @override
  void initState() {
    _cubit = NavigationCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<NavigationCubit, NavigationState>(
      bloc: _cubit,
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              FarmMenu(
                typePage: _cubit.state.activePage,
                tappedIndex: _cubit.onMenuItemChanged,
              ),
              SizedBox(
                width: size.width * 0.8,
                height: size.height,
                child: _getCurrentPage(context, state),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _getCurrentPage(BuildContext context, NavigationState state) {
    if (state.activePage == const TypePage.home()) {
      return const HomePage();
    } else if (state.activePage == const TypePage.weather()) {
      return const WeatherPage();
    } else if (state.activePage == const TypePage.culture()) {
      return const CulturePage();
    } else if (state.activePage == const TypePage.task()) {
      return const TaskPage();
    } else {
      return const SeedingPlanPage();
    }
  }
}
