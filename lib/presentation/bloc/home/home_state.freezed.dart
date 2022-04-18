// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {IncomeExpenses incomeExpenses = emptyIncomeExpenses,
      VolumeWaste volumeWaste = emptyVolumeWaste,
      List<Weather> hourlyWeather = const [],
      List<Weather> weather = const []}) {
    return _HomeState(
      incomeExpenses: incomeExpenses,
      volumeWaste: volumeWaste,
      hourlyWeather: hourlyWeather,
      weather: weather,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  IncomeExpenses get incomeExpenses => throw _privateConstructorUsedError;
  VolumeWaste get volumeWaste => throw _privateConstructorUsedError;
  List<Weather> get hourlyWeather => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {IncomeExpenses incomeExpenses,
      VolumeWaste volumeWaste,
      List<Weather> hourlyWeather,
      List<Weather> weather});

  $IncomeExpensesCopyWith<$Res> get incomeExpenses;
  $VolumeWasteCopyWith<$Res> get volumeWaste;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? incomeExpenses = freezed,
    Object? volumeWaste = freezed,
    Object? hourlyWeather = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      incomeExpenses: incomeExpenses == freezed
          ? _value.incomeExpenses
          : incomeExpenses // ignore: cast_nullable_to_non_nullable
              as IncomeExpenses,
      volumeWaste: volumeWaste == freezed
          ? _value.volumeWaste
          : volumeWaste // ignore: cast_nullable_to_non_nullable
              as VolumeWaste,
      hourlyWeather: hourlyWeather == freezed
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }

  @override
  $IncomeExpensesCopyWith<$Res> get incomeExpenses {
    return $IncomeExpensesCopyWith<$Res>(_value.incomeExpenses, (value) {
      return _then(_value.copyWith(incomeExpenses: value));
    });
  }

  @override
  $VolumeWasteCopyWith<$Res> get volumeWaste {
    return $VolumeWasteCopyWith<$Res>(_value.volumeWaste, (value) {
      return _then(_value.copyWith(volumeWaste: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IncomeExpenses incomeExpenses,
      VolumeWaste volumeWaste,
      List<Weather> hourlyWeather,
      List<Weather> weather});

  @override
  $IncomeExpensesCopyWith<$Res> get incomeExpenses;
  @override
  $VolumeWasteCopyWith<$Res> get volumeWaste;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? incomeExpenses = freezed,
    Object? volumeWaste = freezed,
    Object? hourlyWeather = freezed,
    Object? weather = freezed,
  }) {
    return _then(_HomeState(
      incomeExpenses: incomeExpenses == freezed
          ? _value.incomeExpenses
          : incomeExpenses // ignore: cast_nullable_to_non_nullable
              as IncomeExpenses,
      volumeWaste: volumeWaste == freezed
          ? _value.volumeWaste
          : volumeWaste // ignore: cast_nullable_to_non_nullable
              as VolumeWaste,
      hourlyWeather: hourlyWeather == freezed
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.incomeExpenses = emptyIncomeExpenses,
      this.volumeWaste = emptyVolumeWaste,
      this.hourlyWeather = const [],
      this.weather = const []});

  @JsonKey()
  @override
  final IncomeExpenses incomeExpenses;
  @JsonKey()
  @override
  final VolumeWaste volumeWaste;
  @JsonKey()
  @override
  final List<Weather> hourlyWeather;
  @JsonKey()
  @override
  final List<Weather> weather;

  @override
  String toString() {
    return 'HomeState(incomeExpenses: $incomeExpenses, volumeWaste: $volumeWaste, hourlyWeather: $hourlyWeather, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.incomeExpenses, incomeExpenses) &&
            const DeepCollectionEquality()
                .equals(other.volumeWaste, volumeWaste) &&
            const DeepCollectionEquality()
                .equals(other.hourlyWeather, hourlyWeather) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(incomeExpenses),
      const DeepCollectionEquality().hash(volumeWaste),
      const DeepCollectionEquality().hash(hourlyWeather),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {IncomeExpenses incomeExpenses,
      VolumeWaste volumeWaste,
      List<Weather> hourlyWeather,
      List<Weather> weather}) = _$_HomeState;

  @override
  IncomeExpenses get incomeExpenses;
  @override
  VolumeWaste get volumeWaste;
  @override
  List<Weather> get hourlyWeather;
  @override
  List<Weather> get weather;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
