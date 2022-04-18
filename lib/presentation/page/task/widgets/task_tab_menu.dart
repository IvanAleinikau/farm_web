import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

const Key HOME_TAB_BAR_KEY = Key('HOME_TAB_BAR_KEY');
const Key HOME_TAB_MENU_KEY = Key('HOME_TAB_MENU_KEY');

class TaskTabMenu extends StatelessWidget {
  final List<String> tabs;
  final TabController tabController;

  const TaskTabMenu({
    required this.tabs,
    required this.tabController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 4),
              height: 1,
              color: const Color(0xFFE0E0E0),
              width: double.infinity,
            ),
          ),
          TabBar(
            key: HOME_TAB_BAR_KEY,
            controller: tabController,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            physics: const ClampingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelPadding: const EdgeInsets.only(left: 5, right: 5, bottom: 7),
            indicatorWeight: 1,
            unselectedLabelColor: const Color(0xFF8A8A8A),
            labelColor: FarmColors.primary,
            indicatorColor: FarmColors.primary,
            tabs: _buildTabMenuItems(),
          ),
        ],
      ),
    );
  }

  List<Tab> _buildTabMenuItems() {
    return tabs
        .map(
          (itemText) => Tab(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                itemText,
                style: FarmTextStyles.roboto16w400.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        )
        .toList();
  }
}
