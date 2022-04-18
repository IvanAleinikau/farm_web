import 'package:auto_route/auto_route.dart';
import 'package:farm_web/common/widgets/farm_button.dart';
import 'package:farm_web/common/widgets/farm_dropdown_button.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/task/task_cubit.dart';
import 'package:farm_web/presentation/bloc/task/task_state.dart';
import 'package:farm_web/presentation/model/task.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_input.dart';
import 'package:farm_web/presentation/page/task/tabs/all_tab.dart';
import 'package:farm_web/presentation/page/task/tabs/completed_tab.dart';
import 'package:farm_web/presentation/page/task/tabs/today_tab.dart';
import 'package:farm_web/presentation/page/task/widgets/task_tab_menu.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> with SingleTickerProviderStateMixin {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _responsible = TextEditingController();
  final TextEditingController _date = TextEditingController();

  late TaskCubit _cubit;

  late TabController _tabController;

  final List<Widget> _tabsPages = [
    const TodayTab(),
    const AllTab(),
    const CompletedTab(),
  ];
  late List<String> _tabs = List.filled(_tabsPages.length, '');

  @override
  void initState() {
    super.initState();
    _cubit = TaskCubit();
    _tabController = TabController(vsync: this, length: _tabsPages.length);
  }

  @override
  void dispose() {
    _name.dispose();
    _date.dispose();
    _responsible.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabs = [
      'Сегодня',
      'Все',
      'Выполненные',
    ];

    return BlocConsumer<TaskCubit, TaskState>(
      bloc: _cubit,
      listener: (context, state) {
        if (state.taskCreated) {
          _name.clear();
          _date.clear();
          _responsible.clear();
          context.router.pop();
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: PageBody(
            typePage: const TypePage.task(),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(200),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    flexibleSpace: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22, left: 40),
                              child: Text(
                                'Задачи',
                                style:
                                    FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 32, right: 40),
                              child: SizedBox(
                                height: 52,
                                width: 200,
                                child: FarmButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        FarmIcons.plusIcon,
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(width: 16),
                                      const Text(
                                        'Добавить',
                                        style: FarmTextStyles.roboto20w400,
                                      ),
                                      const SizedBox(width: 16),
                                    ],
                                  ),
                                  onTap: () => _showDialog(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 38),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: _buildHomeTabs(),
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  key: const Key('HOME_TAB_BAR_VIEW_KEY'),
                  children: _tabsPages,
                ),
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

  Future<void> _showDialog(BuildContext context) async {
    await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Задача',
                    style: FarmTextStyles.roboto32w400.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              InkWell(
                onTap: () => context.router.pop(),
                child: Image.asset(
                  FarmIcons.closeIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 32),
                  AuthInput(
                    hintText: 'Название задачи',
                    padding: EdgeInsets.zero,
                    controller: _name,
                    obscureText: false,
                  ),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      const Text('Отвественный:', style: FarmTextStyles.roboto18w400),
                      const SizedBox(width: 20),
                      FarmDropdownButton(
                        users: _cubit.state.users,
                        responsible: (CustomUser user) => _responsible.text = user.name,
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  SfDateRangePicker(
                    onSelectionChanged: (DateRangePickerSelectionChangedArgs value) {
                      _date.text = DateFormat("yyyy-MM-dd HH:mm:ss").format(value.value);
                    },
                    selectionMode: DateRangePickerSelectionMode.single,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: FarmColors.primary,
                  ),
                  const SizedBox(height: 28),
                  FarmButton(
                    child: const Text(
                      'Добавить',
                      style: FarmTextStyles.roboto20w400,
                    ),
                    onTap: () {
                      if (_responsible.text.isEmpty) {
                        _responsible.text = _cubit.state.users.first.name;
                      }
                      if (_date.text.isEmpty) {
                        _date.text = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
                      }
                      _cubit.onTaskCreated(
                        Task(
                          taskName: _name.text,
                          responsible: _responsible.text,
                          taskDate: DateTime.parse(_date.text),
                          isCompleted: 0,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
