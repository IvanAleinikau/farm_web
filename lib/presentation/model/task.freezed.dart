// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {String? id,
      required String taskName,
      required String responsible,
      required DateTime taskDate,
      required int isCompleted}) {
    return _Task(
      id: id,
      taskName: taskName,
      responsible: responsible,
      taskDate: taskDate,
      isCompleted: isCompleted,
    );
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String? get id => throw _privateConstructorUsedError;
  String get taskName => throw _privateConstructorUsedError;
  String get responsible => throw _privateConstructorUsedError;
  DateTime get taskDate => throw _privateConstructorUsedError;
  int get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String taskName,
      String responsible,
      DateTime taskDate,
      int isCompleted});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? taskName = freezed,
    Object? responsible = freezed,
    Object? taskDate = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: taskName == freezed
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      responsible: responsible == freezed
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String,
      taskDate: taskDate == freezed
          ? _value.taskDate
          : taskDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String taskName,
      String responsible,
      DateTime taskDate,
      int isCompleted});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? taskName = freezed,
    Object? responsible = freezed,
    Object? taskDate = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: taskName == freezed
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      responsible: responsible == freezed
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String,
      taskDate: taskDate == freezed
          ? _value.taskDate
          : taskDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  const _$_Task(
      {this.id,
      required this.taskName,
      required this.responsible,
      required this.taskDate,
      required this.isCompleted});

  @override
  final String? id;
  @override
  final String taskName;
  @override
  final String responsible;
  @override
  final DateTime taskDate;
  @override
  final int isCompleted;

  @override
  String toString() {
    return 'Task(id: $id, taskName: $taskName, responsible: $responsible, taskDate: $taskDate, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.taskName, taskName) &&
            const DeepCollectionEquality()
                .equals(other.responsible, responsible) &&
            const DeepCollectionEquality().equals(other.taskDate, taskDate) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(taskName),
      const DeepCollectionEquality().hash(responsible),
      const DeepCollectionEquality().hash(taskDate),
      const DeepCollectionEquality().hash(isCompleted));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {String? id,
      required String taskName,
      required String responsible,
      required DateTime taskDate,
      required int isCompleted}) = _$_Task;

  @override
  String? get id;
  @override
  String get taskName;
  @override
  String get responsible;
  @override
  DateTime get taskDate;
  @override
  int get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
