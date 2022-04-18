import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    String? id,
    required String taskName,
    required String responsible,
    required DateTime taskDate,
    required int isCompleted,
  }) = _Task;
}

Task emptyTask = Task(
  taskName: '',
  responsible: '',
  taskDate: DateTime(2022),
  isCompleted: 0,
);
