import 'package:auto_route/auto_route.dart';
import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/common/widgets/farm_text.dart';
import 'package:farm_web/common/widgets/menu/farm_menu_item.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/navigation/navigation_cubit.dart';
import 'package:farm_web/presentation/bloc/navigation/navigation_state.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FarmMenu extends StatefulWidget {
  final TypePage typePage;

  const FarmMenu({
    Key? key,
    required this.typePage,
  }) : super(key: key);

  @override
  State<FarmMenu> createState() => _FarmMenuState();
}

class _FarmMenuState extends State<FarmMenu> {
  late NavigationCubit _cubit;

  @override
  void initState() {
    _cubit = NavigationCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<NavigationCubit, NavigationState>(
      bloc: _cubit,
      listener: (context, state) {
        if (state.activePage == const TypePage.home()) context.router.push(const HomeRoute());
        if (state.activePage == const TypePage.weather()) context.router.push(const WeatherRoute());
        if (state.activePage == const TypePage.task()) context.router.push(const TaskRoute());
        if (state.activePage == const TypePage.culture()) context.router.push(const CultureRoute());
        if (state.activePage == const TypePage.seedingPlan()) {
          context.router.push(const SeedingPlanRoute());
        }
      },
      builder: (context, state) {
        return Container(
          width: size.width * 0.2,
          height: size.height,
          color: FarmColors.primary,
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: FarmText(
                      APP_NAME,
                      style: FarmTextStyles.roboto20w400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: FarmColors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 110),
                FarmMenuItem(
                  title: 'Главная',
                  isActive: const TypePage.home() == widget.typePage,
                  onTap: () => _cubit.onMenuItemChanged(const TypePage.home()),
                  iconPath: FarmIcons.homeIcon,
                ),
                const SizedBox(height: 25),
                FarmMenuItem(
                  title: 'Погода',
                  isActive: const TypePage.weather() == widget.typePage,
                  onTap: () => _cubit.onMenuItemChanged(const TypePage.weather()),
                  iconPath: FarmIcons.weatherIcon,
                ),
                const SizedBox(height: 25),
                FarmMenuItem(
                  title: 'Культуры',
                  isActive: const TypePage.culture() == widget.typePage,
                  onTap: () => _cubit.onMenuItemChanged(const TypePage.culture()),
                  iconPath: FarmIcons.cultureIcon,
                ),
                const SizedBox(height: 25),
                FarmMenuItem(
                  title: 'Задачи',
                  isActive: const TypePage.task() == widget.typePage,
                  onTap: () => _cubit.onMenuItemChanged(const TypePage.task()),
                  iconPath: FarmIcons.taskIcon,
                ),
                const SizedBox(height: 25),
                FarmMenuItem(
                  title: 'План посева',
                  isActive: const TypePage.seedingPlan() == widget.typePage,
                  onTap: () => _cubit.onMenuItemChanged(const TypePage.seedingPlan()),
                  iconPath: FarmIcons.statisticsIcon,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
