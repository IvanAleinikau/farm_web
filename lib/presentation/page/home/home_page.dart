import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/home/home_cubit.dart';
import 'package:farm_web/presentation/bloc/home/home_state.dart';
import 'package:farm_web/presentation/page/home/widgets/content_widget.dart';
import 'package:farm_web/presentation/page/home/widgets/home_weather_card.dart';
import 'package:farm_web/presentation/page/task/tabs/all_tab.dart';
import 'package:farm_web/presentation/page/task/tabs/completed_tab.dart';
import 'package:farm_web/presentation/page/task/tabs/today_tab.dart';
import 'package:farm_web/presentation/page/task/widgets/task_tab_menu.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late HomeCubit _cubit;

  late TabController _tabController;

  final List<Widget> _tabsPages = [
    const TodayTab(),
    const AllTab(),
    const CompletedTab(),
  ];
  late List<String> _tabs = List.filled(_tabsPages.length, '');

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: _tabsPages.length);
    _cubit = HomeCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _tabs = [
      'Сегодня',
      'Все',
      'Выполненные',
    ];

    return BlocConsumer<HomeCubit, HomeState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: PageBody(
            typePage: const TypePage.home(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, left: 40),
                          child: ContentWidget(
                            title: 'Погода',
                            height: 214,
                            child: HomeWeatherCard(
                              title: 'Сейчас в Бресте',
                              temperature: state.weather.first.temperature,
                              iconCode: state.weather.first.iconCode,
                              temperatureFontSize: 64,
                              iconScale: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, left: 24),
                          child: ContentWidget(
                            title: 'Общий объем',
                            height: 214,
                            child: Stack(
                              children: [
                                SfCircularChart(
                                  legend: Legend(isVisible: true),
                                  series: <CircularSeries>[
                                    DoughnutSeries<VolumeData, String>(
                                      dataSource: [
                                        VolumeData('Отходы', state.volumeWaste.waste,
                                            const Color(0xff732CCE)),
                                        VolumeData('Собрано', state.volumeWaste.volume,
                                            const Color(0xffF58444)),
                                      ],
                                      pointColorMapper: (VolumeData data, _) => data.color,
                                      xValueMapper: (VolumeData data, _) =>
                                          '${data.x}  ${data.y} т',
                                      yValueMapper: (VolumeData data, _) => data.y,
                                    )
                                  ],
                                ),
                                Align(
                                  alignment: const Alignment(-0.47, 0),
                                  child: Text(
                                    '${state.volumeWaste.volume + state.volumeWaste.waste} т',
                                    style: FarmTextStyles.roboto14w400.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, left: 24, right: 40),
                          child: ContentWidget(
                            title: 'Доходы/Расходы',
                            height: 214,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: Stack(
                                children: [
                                  SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    series: <ChartSeries>[
                                      ColumnSeries<VolumeSecondData, String>(
                                        dataSource: [
                                          VolumeSecondData(
                                            'Доходы',
                                            state.incomeExpenses.income,
                                            const Color(0xFFF58444),
                                          ),
                                          VolumeSecondData(
                                            'Расходы',
                                            state.incomeExpenses.expenses,
                                            const Color(0xFF732CCE),
                                          ),
                                          VolumeSecondData(
                                            'Прибыль',
                                            state.incomeExpenses.income -
                                                state.incomeExpenses.expenses,
                                            FarmColors.primary,
                                          ),
                                        ],
                                        pointColorMapper: (VolumeSecondData data, _) => data.color,
                                        xValueMapper: (VolumeSecondData data, _) => data.x,
                                        yValueMapper: (VolumeSecondData data, _) => data.y,
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: const Alignment(-0.47, 0.45),
                                    child: Text(
                                      '${state.incomeExpenses.income}',
                                      style:
                                          FarmTextStyles.roboto14w400.copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Align(
                                    alignment: const Alignment(0.125, 0.45),
                                    child: Text(
                                      '${state.incomeExpenses.expenses}',
                                      style:
                                          FarmTextStyles.roboto14w400.copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Align(
                                    alignment: const Alignment(0.71, 0.45),
                                    child: Text(
                                      '${state.incomeExpenses.income - state.incomeExpenses.expenses}',
                                      textAlign: TextAlign.center,
                                      style:
                                          FarmTextStyles.roboto14w400.copyWith(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 24, left: 40, right: 40),
                          child: ContentWidget(
                            title: 'Задачи',
                            height: 274,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Scaffold(
                                appBar: PreferredSize(
                                  preferredSize: const Size.fromHeight(50),
                                  child: AppBar(
                                    automaticallyImplyLeading: false,
                                    backgroundColor: Colors.white,
                                    elevation: 0,
                                    flexibleSpace: Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25),
                                          child: _buildHomeTabs(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                body: TabBarView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  controller: _tabController,
                                  key: const Key('HOME_TAB_BAR_VIEW_KEY_KEY'),
                                  children: _tabsPages,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 24, left: 40, right: 40),
                          child: ContentWidget(
                            title: 'Детали сбора урожая',
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(),
                                series: <ChartSeries>[
                                  LineSeries<HarvestingData, String>(
                                    color: const Color(0xFFEF4126),
                                    dataSource: [
                                      HarvestingData('Январь', 0.0),
                                      HarvestingData('Февраль', 0.0),
                                      HarvestingData('Март', 0.0),
                                      HarvestingData('Апрель', 0.0),
                                      HarvestingData('Май', 12.0),
                                      HarvestingData('Июнь', 19.0),
                                      HarvestingData('Июль', 36.0),
                                      HarvestingData('Август', 43.0),
                                      HarvestingData('Сентябрь', 31.0),
                                      HarvestingData('Октябрь', 12.0),
                                      HarvestingData('Ноябрь', 0.0),
                                      HarvestingData('Декабрь', 0.0),
                                    ],
                                    markerSettings: const MarkerSettings(isVisible: true),
                                    xValueMapper: (HarvestingData data, _) => data.x,
                                    yValueMapper: (HarvestingData data, _) => data.y,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHomeTabs() => TaskTabMenu(
        tabs: _tabs,
        tabController: _tabController,
      );
}

class HarvestingData {
  HarvestingData(this.x, this.y);

  final String x;
  final double y;
}

class VolumeSecondData {
  VolumeSecondData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

class VolumeData {
  VolumeData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
