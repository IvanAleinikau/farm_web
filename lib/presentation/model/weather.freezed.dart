// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {required String cityName,
      required int temperature,
      required String iconCode,
      required String description,
      required DateTime time}) {
    return _Weather(
      cityName: cityName,
      temperature: temperature,
      iconCode: iconCode,
      description: description,
      time: time,
    );
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  int get temperature => throw _privateConstructorUsedError;
  String get iconCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {String cityName,
      int temperature,
      String iconCode,
      String description,
      DateTime time});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? temperature = freezed,
    Object? iconCode = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      iconCode: iconCode == freezed
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityName,
      int temperature,
      String iconCode,
      String description,
      DateTime time});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? temperature = freezed,
    Object? iconCode = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_Weather(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      iconCode: iconCode == freezed
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.cityName,
      required this.temperature,
      required this.iconCode,
      required this.description,
      required this.time});

  @override
  final String cityName;
  @override
  final int temperature;
  @override
  final String iconCode;
  @override
  final String description;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, temperature: $temperature, iconCode: $iconCode, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.iconCode, iconCode) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(iconCode),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required String cityName,
      required int temperature,
      required String iconCode,
      required String description,
      required DateTime time}) = _$_Weather;

  @override
  String get cityName;
  @override
  int get temperature;
  @override
  String get iconCode;
  @override
  String get description;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
