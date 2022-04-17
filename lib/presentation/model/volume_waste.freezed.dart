// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'volume_waste.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VolumeWasteTearOff {
  const _$VolumeWasteTearOff();

  _VolumeWaste call({required double volume, required double waste}) {
    return _VolumeWaste(
      volume: volume,
      waste: waste,
    );
  }
}

/// @nodoc
const $VolumeWaste = _$VolumeWasteTearOff();

/// @nodoc
mixin _$VolumeWaste {
  double get volume => throw _privateConstructorUsedError;
  double get waste => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VolumeWasteCopyWith<VolumeWaste> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeWasteCopyWith<$Res> {
  factory $VolumeWasteCopyWith(
          VolumeWaste value, $Res Function(VolumeWaste) then) =
      _$VolumeWasteCopyWithImpl<$Res>;
  $Res call({double volume, double waste});
}

/// @nodoc
class _$VolumeWasteCopyWithImpl<$Res> implements $VolumeWasteCopyWith<$Res> {
  _$VolumeWasteCopyWithImpl(this._value, this._then);

  final VolumeWaste _value;
  // ignore: unused_field
  final $Res Function(VolumeWaste) _then;

  @override
  $Res call({
    Object? volume = freezed,
    Object? waste = freezed,
  }) {
    return _then(_value.copyWith(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      waste: waste == freezed
          ? _value.waste
          : waste // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$VolumeWasteCopyWith<$Res>
    implements $VolumeWasteCopyWith<$Res> {
  factory _$VolumeWasteCopyWith(
          _VolumeWaste value, $Res Function(_VolumeWaste) then) =
      __$VolumeWasteCopyWithImpl<$Res>;
  @override
  $Res call({double volume, double waste});
}

/// @nodoc
class __$VolumeWasteCopyWithImpl<$Res> extends _$VolumeWasteCopyWithImpl<$Res>
    implements _$VolumeWasteCopyWith<$Res> {
  __$VolumeWasteCopyWithImpl(
      _VolumeWaste _value, $Res Function(_VolumeWaste) _then)
      : super(_value, (v) => _then(v as _VolumeWaste));

  @override
  _VolumeWaste get _value => super._value as _VolumeWaste;

  @override
  $Res call({
    Object? volume = freezed,
    Object? waste = freezed,
  }) {
    return _then(_VolumeWaste(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      waste: waste == freezed
          ? _value.waste
          : waste // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_VolumeWaste implements _VolumeWaste {
  const _$_VolumeWaste({required this.volume, required this.waste});

  @override
  final double volume;
  @override
  final double waste;

  @override
  String toString() {
    return 'VolumeWaste(volume: $volume, waste: $waste)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VolumeWaste &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.waste, waste));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(waste));

  @JsonKey(ignore: true)
  @override
  _$VolumeWasteCopyWith<_VolumeWaste> get copyWith =>
      __$VolumeWasteCopyWithImpl<_VolumeWaste>(this, _$identity);
}

abstract class _VolumeWaste implements VolumeWaste {
  const factory _VolumeWaste({required double volume, required double waste}) =
      _$_VolumeWaste;

  @override
  double get volume;
  @override
  double get waste;
  @override
  @JsonKey(ignore: true)
  _$VolumeWasteCopyWith<_VolumeWaste> get copyWith =>
      throw _privateConstructorUsedError;
}
