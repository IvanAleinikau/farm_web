import 'package:auto_route/auto_route.dart';
import 'package:farm_web/common/widgets/farm_button.dart';
import 'package:farm_web/common/widgets/farm_dropdown_button.dart';
import 'package:farm_web/presentation/bloc/task/task_cubit.dart';
import 'package:farm_web/presentation/bloc/task/task_state.dart';
import 'package:farm_web/presentation/model/task.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_input.dart';
import 'package:farm_web/presentation/page/task/widgets/table_head.dart';
import 'package:farm_web/presentation/page/task/widgets/task_widget.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CompletedTab extends StatefulWidget {
  const CompletedTab({Key? key}) : super(key: key);

  @override
  State<CompletedTab> createState() => _CompletedTabState();
}

class _CompletedTabState extends State<CompletedTab> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _responsible = TextEditingController();
  final TextEditingController _date = TextEditingController();

  late TaskCubit _cubit;

  @override
  void initState() {
    _cubit = TaskCubit();
    super.initState();
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: BlocConsumer<TaskCubit, TaskState>(
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
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TableHead(),
                  const SizedBox(height: 24),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      state.completedTask.length,
                      (index) {
                        return TaskWidget(
                          onCompleted: _cubit.onTaskComplete,
                          task: state.completedTask[index],
                          onDelete: _cubit.onDelete,
                          onUpdate: (Task task) => _showDialog(context, task),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context, Task task) async {
    _name.text = task.taskName;
    _responsible.text = task.responsible;
    _date.text = DateFormat("yyyy-MM-dd HH:mm:ss").format(task.taskDate);
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
                onTap: () {
                  context.router.pop();
                  _name.clear();
                  _date.clear();
                  _responsible.clear();
                },
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
                    initialSelectedDate: task.taskDate,
                    selectionColor: FarmColors.primary,
                  ),
                  const SizedBox(height: 28),
                  FarmButton(
                    child: const Text(
                      'Обновить',
                      style: FarmTextStyles.roboto20w400,
                    ),
                    onTap: () {
                      if (_responsible.text.isEmpty) {
                        _responsible.text = _cubit.state.users.first.name;
                      }
                      _cubit.onTaskUpdated(task.copyWith(
                        taskName: _name.text,
                        responsible: _responsible.text,
                        taskDate: DateTime.parse(_date.text),
                        isCompleted: task.isCompleted,
                      ));
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
