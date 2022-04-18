// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskStateTearOff {
  const _$TaskStateTearOff();

  _TaskState call(
      {List<CustomUser> users = const [],
      bool taskCreated = false,
      List<Task> allTasks = const [],
      List<Task> todayTask = const [],
      List<Task> completedTask = const [],
      bool loading = false}) {
    return _TaskState(
      users: users,
      taskCreated: taskCreated,
      allTasks: allTasks,
      todayTask: todayTask,
      completedTask: completedTask,
      loading: loading,
    );
  }
}

/// @nodoc
const $TaskState = _$TaskStateTearOff();

/// @nodoc
mixin _$TaskState {
  List<CustomUser> get users => throw _privateConstructorUsedError;
  bool get taskCreated => throw _privateConstructorUsedError;
  List<Task> get allTasks => throw _privateConstructorUsedError;
  List<Task> get todayTask => throw _privateConstructorUsedError;
  List<Task> get completedTask => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call(
      {List<CustomUser> users,
      bool taskCreated,
      List<Task> allTasks,
      List<Task> todayTask,
      List<Task> completedTask,
      bool loading});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? taskCreated = freezed,
    Object? allTasks = freezed,
    Object? todayTask = freezed,
    Object? completedTask = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<CustomUser>,
      taskCreated: taskCreated == freezed
          ? _value.taskCreated
          : taskCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: allTasks == freezed
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      todayTask: todayTask == freezed
          ? _value.todayTask
          : todayTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTask: completedTask == freezed
          ? _value.completedTask
          : completedTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(
          _TaskState value, $Res Function(_TaskState) then) =
      __$TaskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CustomUser> users,
      bool taskCreated,
      List<Task> allTasks,
      List<Task> todayTask,
      List<Task> completedTask,
      bool loading});
}

/// @nodoc
class __$TaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(_TaskState _value, $Res Function(_TaskState) _then)
      : super(_value, (v) => _then(v as _TaskState));

  @override
  _TaskState get _value => super._value as _TaskState;

  @override
  $Res call({
    Object? users = freezed,
    Object? taskCreated = freezed,
    Object? allTasks = freezed,
    Object? todayTask = freezed,
    Object? completedTask = freezed,
    Object? loading = freezed,
  }) {
    return _then(_TaskState(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<CustomUser>,
      taskCreated: taskCreated == freezed
          ? _value.taskCreated
          : taskCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: allTasks == freezed
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      todayTask: todayTask == freezed
          ? _value.todayTask
          : todayTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      completedTask: completedTask == freezed
          ? _value.completedTask
          : completedTask // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskState implements _TaskState {
  const _$_TaskState(
      {this.users = const [],
      this.taskCreated = false,
      this.allTasks = const [],
      this.todayTask = const [],
      this.completedTask = const [],
      this.loading = false});

  @JsonKey()
  @override
  final List<CustomUser> users;
  @JsonKey()
  @override
  final bool taskCreated;
  @JsonKey()
  @override
  final List<Task> allTasks;
  @JsonKey()
  @override
  final List<Task> todayTask;
  @JsonKey()
  @override
  final List<Task> completedTask;
  @JsonKey()
  @override
  final bool loading;

  @override
  String toString() {
    return 'TaskState(users: $users, taskCreated: $taskCreated, allTasks: $allTasks, todayTask: $todayTask, completedTask: $completedTask, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality()
                .equals(other.taskCreated, taskCreated) &&
            const DeepCollectionEquality().equals(other.allTasks, allTasks) &&
            const DeepCollectionEquality().equals(other.todayTask, todayTask) &&
            const DeepCollectionEquality()
                .equals(other.completedTask, completedTask) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(taskCreated),
      const DeepCollectionEquality().hash(allTasks),
      const DeepCollectionEquality().hash(todayTask),
      const DeepCollectionEquality().hash(completedTask),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$TaskStateCopyWith<_TaskState> get copyWith =>
      __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {List<CustomUser> users,
      bool taskCreated,
      List<Task> allTasks,
      List<Task> todayTask,
      List<Task> completedTask,
      bool loading}) = _$_TaskState;

  @override
  List<CustomUser> get users;
  @override
  bool get taskCreated;
  @override
  List<Task> get allTasks;
  @override
  List<Task> get todayTask;
  @override
  List<Task> get completedTask;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$TaskStateCopyWith<_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
