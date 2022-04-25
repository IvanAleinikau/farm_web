// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'culture_detailed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CultureDetailedStateTearOff {
  const _$CultureDetailedStateTearOff();

  _CultureDetailedState call(
      {Culture culture = emptyCulture, bool cultureUpdated = false}) {
    return _CultureDetailedState(
      culture: culture,
      cultureUpdated: cultureUpdated,
    );
  }
}

/// @nodoc
const $CultureDetailedState = _$CultureDetailedStateTearOff();

/// @nodoc
mixin _$CultureDetailedState {
  Culture get culture => throw _privateConstructorUsedError;
  bool get cultureUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CultureDetailedStateCopyWith<CultureDetailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultureDetailedStateCopyWith<$Res> {
  factory $CultureDetailedStateCopyWith(CultureDetailedState value,
          $Res Function(CultureDetailedState) then) =
      _$CultureDetailedStateCopyWithImpl<$Res>;
  $Res call({Culture culture, bool cultureUpdated});

  $CultureCopyWith<$Res> get culture;
}

/// @nodoc
class _$CultureDetailedStateCopyWithImpl<$Res>
    implements $CultureDetailedStateCopyWith<$Res> {
  _$CultureDetailedStateCopyWithImpl(this._value, this._then);

  final CultureDetailedState _value;
  // ignore: unused_field
  final $Res Function(CultureDetailedState) _then;

  @override
  $Res call({
    Object? culture = freezed,
    Object? cultureUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      culture: culture == freezed
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as Culture,
      cultureUpdated: cultureUpdated == freezed
          ? _value.cultureUpdated
          : cultureUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CultureCopyWith<$Res> get culture {
    return $CultureCopyWith<$Res>(_value.culture, (value) {
      return _then(_value.copyWith(culture: value));
    });
  }
}

/// @nodoc
abstract class _$CultureDetailedStateCopyWith<$Res>
    implements $CultureDetailedStateCopyWith<$Res> {
  factory _$CultureDetailedStateCopyWith(_CultureDetailedState value,
          $Res Function(_CultureDetailedState) then) =
      __$CultureDetailedStateCopyWithImpl<$Res>;
  @override
  $Res call({Culture culture, bool cultureUpdated});

  @override
  $CultureCopyWith<$Res> get culture;
}

/// @nodoc
class __$CultureDetailedStateCopyWithImpl<$Res>
    extends _$CultureDetailedStateCopyWithImpl<$Res>
    implements _$CultureDetailedStateCopyWith<$Res> {
  __$CultureDetailedStateCopyWithImpl(
      _CultureDetailedState _value, $Res Function(_CultureDetailedState) _then)
      : super(_value, (v) => _then(v as _CultureDetailedState));

  @override
  _CultureDetailedState get _value => super._value as _CultureDetailedState;

  @override
  $Res call({
    Object? culture = freezed,
    Object? cultureUpdated = freezed,
  }) {
    return _then(_CultureDetailedState(
      culture: culture == freezed
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as Culture,
      cultureUpdated: cultureUpdated == freezed
          ? _value.cultureUpdated
          : cultureUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CultureDetailedState implements _CultureDetailedState {
  const _$_CultureDetailedState(
      {this.culture = emptyCulture, this.cultureUpdated = false});

  @JsonKey()
  @override
  final Culture culture;
  @JsonKey()
  @override
  final bool cultureUpdated;

  @override
  String toString() {
    return 'CultureDetailedState(culture: $culture, cultureUpdated: $cultureUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CultureDetailedState &&
            const DeepCollectionEquality().equals(other.culture, culture) &&
            const DeepCollectionEquality()
                .equals(other.cultureUpdated, cultureUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(culture),
      const DeepCollectionEquality().hash(cultureUpdated));

  @JsonKey(ignore: true)
  @override
  _$CultureDetailedStateCopyWith<_CultureDetailedState> get copyWith =>
      __$CultureDetailedStateCopyWithImpl<_CultureDetailedState>(
          this, _$identity);
}

abstract class _CultureDetailedState implements CultureDetailedState {
  const factory _CultureDetailedState({Culture culture, bool cultureUpdated}) =
      _$_CultureDetailedState;

  @override
  Culture get culture;
  @override
  bool get cultureUpdated;
  @override
  @JsonKey(ignore: true)
  _$CultureDetailedStateCopyWith<_CultureDetailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
