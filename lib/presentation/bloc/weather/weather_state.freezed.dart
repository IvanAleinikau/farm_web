// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {List<Weather> weather = const [],
      bool error = false,
      List<Weather> hourlyWeather = const [],
      bool loading = false}) {
    return _WeatherState(
      weather: weather,
      error: error,
      hourlyWeather: hourlyWeather,
      loading: loading,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  List<Weather> get weather => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<Weather> get hourlyWeather => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {List<Weather> weather,
      bool error,
      List<Weather> hourlyWeather,
      bool loading});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? weather = freezed,
    Object? error = freezed,
    Object? hourlyWeather = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      hourlyWeather: hourlyWeather == freezed
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Weather> weather,
      bool error,
      List<Weather> hourlyWeather,
      bool loading});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? weather = freezed,
    Object? error = freezed,
    Object? hourlyWeather = freezed,
    Object? loading = freezed,
  }) {
    return _then(_WeatherState(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      hourlyWeather: hourlyWeather == freezed
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.weather = const [],
      this.error = false,
      this.hourlyWeather = const [],
      this.loading = false});

  @JsonKey()
  @override
  final List<Weather> weather;
  @JsonKey()
  @override
  final bool error;
  @JsonKey()
  @override
  final List<Weather> hourlyWeather;
  @JsonKey()
  @override
  final bool loading;

  @override
  String toString() {
    return 'WeatherState(weather: $weather, error: $error, hourlyWeather: $hourlyWeather, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherState &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.hourlyWeather, hourlyWeather) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(hourlyWeather),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {List<Weather> weather,
      bool error,
      List<Weather> hourlyWeather,
      bool loading}) = _$_WeatherState;

  @override
  List<Weather> get weather;
  @override
  bool get error;
  @override
  List<Weather> get hourlyWeather;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
