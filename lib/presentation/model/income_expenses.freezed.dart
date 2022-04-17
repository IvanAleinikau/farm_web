// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'income_expenses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IncomeExpensesTearOff {
  const _$IncomeExpensesTearOff();

  _IncomeExpenses call({required double income, required double expenses}) {
    return _IncomeExpenses(
      income: income,
      expenses: expenses,
    );
  }
}

/// @nodoc
const $IncomeExpenses = _$IncomeExpensesTearOff();

/// @nodoc
mixin _$IncomeExpenses {
  double get income => throw _privateConstructorUsedError;
  double get expenses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeExpensesCopyWith<IncomeExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeExpensesCopyWith<$Res> {
  factory $IncomeExpensesCopyWith(
          IncomeExpenses value, $Res Function(IncomeExpenses) then) =
      _$IncomeExpensesCopyWithImpl<$Res>;
  $Res call({double income, double expenses});
}

/// @nodoc
class _$IncomeExpensesCopyWithImpl<$Res>
    implements $IncomeExpensesCopyWith<$Res> {
  _$IncomeExpensesCopyWithImpl(this._value, this._then);

  final IncomeExpenses _value;
  // ignore: unused_field
  final $Res Function(IncomeExpenses) _then;

  @override
  $Res call({
    Object? income = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_value.copyWith(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      expenses: expenses == freezed
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$IncomeExpensesCopyWith<$Res>
    implements $IncomeExpensesCopyWith<$Res> {
  factory _$IncomeExpensesCopyWith(
          _IncomeExpenses value, $Res Function(_IncomeExpenses) then) =
      __$IncomeExpensesCopyWithImpl<$Res>;
  @override
  $Res call({double income, double expenses});
}

/// @nodoc
class __$IncomeExpensesCopyWithImpl<$Res>
    extends _$IncomeExpensesCopyWithImpl<$Res>
    implements _$IncomeExpensesCopyWith<$Res> {
  __$IncomeExpensesCopyWithImpl(
      _IncomeExpenses _value, $Res Function(_IncomeExpenses) _then)
      : super(_value, (v) => _then(v as _IncomeExpenses));

  @override
  _IncomeExpenses get _value => super._value as _IncomeExpenses;

  @override
  $Res call({
    Object? income = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_IncomeExpenses(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      expenses: expenses == freezed
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_IncomeExpenses implements _IncomeExpenses {
  const _$_IncomeExpenses({required this.income, required this.expenses});

  @override
  final double income;
  @override
  final double expenses;

  @override
  String toString() {
    return 'IncomeExpenses(income: $income, expenses: $expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncomeExpenses &&
            const DeepCollectionEquality().equals(other.income, income) &&
            const DeepCollectionEquality().equals(other.expenses, expenses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(income),
      const DeepCollectionEquality().hash(expenses));

  @JsonKey(ignore: true)
  @override
  _$IncomeExpensesCopyWith<_IncomeExpenses> get copyWith =>
      __$IncomeExpensesCopyWithImpl<_IncomeExpenses>(this, _$identity);
}

abstract class _IncomeExpenses implements IncomeExpenses {
  const factory _IncomeExpenses(
      {required double income, required double expenses}) = _$_IncomeExpenses;

  @override
  double get income;
  @override
  double get expenses;
  @override
  @JsonKey(ignore: true)
  _$IncomeExpensesCopyWith<_IncomeExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}
