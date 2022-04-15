import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/common/widgets/farm_text.dart';
import 'package:farm_web/presentation/page/main/menu/farm_menu_item.dart';
import 'package:farm_web/presentation/page/main/menu/type_page.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class FarmMenu extends StatefulWidget {
  final TypePage typePage;
  final Function(TypePage) tappedIndex;

  const FarmMenu({
    Key? key,
    required this.typePage,
    required this.tappedIndex,
  }) : super(key: key);

  @override
  State<FarmMenu> createState() => _FarmMenuState();
}

class _FarmMenuState extends State<FarmMenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              onTap: () => widget.tappedIndex(const TypePage.home()),
              iconPath: FarmIcons.homeIcon,
            ),
            const SizedBox(height: 25),
            FarmMenuItem(
              title: 'Погода',
              isActive: const TypePage.weather() == widget.typePage,
              onTap: () => widget.tappedIndex(const TypePage.weather()),
              iconPath: FarmIcons.weatherIcon,
            ),
            const SizedBox(height: 25),
            FarmMenuItem(
              title: 'Культуры',
              isActive: const TypePage.culture() == widget.typePage,
              onTap: () => widget.tappedIndex(const TypePage.culture()),
              iconPath: FarmIcons.cultureIcon,
            ),
            const SizedBox(height: 25),
            FarmMenuItem(
              title: 'Задачи',
              isActive: const TypePage.task() == widget.typePage,
              onTap: () => widget.tappedIndex(const TypePage.task()),
              iconPath: FarmIcons.taskIcon,
            ),
            const SizedBox(height: 25),
            FarmMenuItem(
              title: 'План посева',
              isActive: const TypePage.seedingPlan() == widget.typePage,
              onTap: () => widget.tappedIndex(const TypePage.seedingPlan()),
              iconPath: FarmIcons.statisticsIcon,
            ),
          ],
        ),
      ),
    );
  }
}
