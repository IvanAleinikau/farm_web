import 'package:farm_web/presentation/model/task.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default([]) List<CustomUser> users,
    @Default(false) bool taskCreated,
    @Default([]) List<Task> allTasks,
    @Default([]) List<Task> todayTask,
    @Default([]) List<Task> completedTask,
    @Default(false) bool loading,
  }) = _TaskState;
}
