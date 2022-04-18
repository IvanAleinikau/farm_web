import 'package:farm_web/data/auth_repository.dart';
import 'package:farm_web/data/task_repository.dart';
import 'package:farm_web/presentation/bloc/task/task_state.dart';
import 'package:farm_web/presentation/model/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(const TaskState()) {
    onInit();
  }

  final _authRepository = GetIt.instance<AuthRepository>();
  final _taskRepository = GetIt.instance<TaskRepository>();

  void onInit() {
    _fetchUsers();
    _fetchTasks();
  }

  void _fetchUsers() async {
    final result = await _authRepository.findCustomUsers();
    emit(state.copyWith(users: result));
  }

  void _fetchTasks() async {
    final List<Task> result = await _taskRepository.read();
    emit(state.copyWith(allTasks: result));

    if (result.isNotEmpty) {
      final List<Task> completedTasks =
          result.where((element) => element.isCompleted == 1).toList();
      emit(state.copyWith(completedTask: completedTasks));

      final List<Task> todayTasks = result
          .where((element) =>
              element.taskDate.day == DateTime.now().day &&
              element.taskDate.month == DateTime.now().month &&
              element.taskDate.year == DateTime.now().year)
          .toList();
      emit(state.copyWith(todayTask: todayTasks));
    }
  }

  void onTaskCreated(Task task) async {
    emit(state.copyWith(loading: true));
    final result = await _taskRepository.create(task: task);
    if (result == 'successfully') {
      emit(state.copyWith(taskCreated: true));
      Future.delayed(const Duration(seconds: 1), () {
        _fetchTasks();
      });
    }
    emit(state.copyWith(taskCreated: false, loading: false));
  }

  void onTaskComplete(Task task) async {
    final newValue = task.isCompleted == 0 ? 1 : 0;
    await _taskRepository
        .update(task.copyWith(isCompleted: newValue))
        .then((value) => _fetchTasks());
  }

  void onTaskUpdated(Task task) async {
    await _taskRepository.update(task).then((value) {
      emit(state.copyWith(taskCreated: true));
      _fetchTasks();
    });
    emit(state.copyWith(taskCreated: false));
  }

  void onDelete(Task task) async {
    await _taskRepository.delete(task.id!).then((value) => _fetchTasks());
  }
}
