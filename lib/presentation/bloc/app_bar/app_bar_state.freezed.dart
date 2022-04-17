// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppBarStateTearOff {
  const _$AppBarStateTearOff();

  _AppBarState call(
      {bool successfully = false, CustomUser customUser = emptyUser}) {
    return _AppBarState(
      successfully: successfully,
      customUser: customUser,
    );
  }
}

/// @nodoc
const $AppBarState = _$AppBarStateTearOff();

/// @nodoc
mixin _$AppBarState {
  bool get successfully => throw _privateConstructorUsedError;
  CustomUser get customUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBarStateCopyWith<AppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBarStateCopyWith<$Res> {
  factory $AppBarStateCopyWith(
          AppBarState value, $Res Function(AppBarState) then) =
      _$AppBarStateCopyWithImpl<$Res>;
  $Res call({bool successfully, CustomUser customUser});

  $CustomUserCopyWith<$Res> get customUser;
}

/// @nodoc
class _$AppBarStateCopyWithImpl<$Res> implements $AppBarStateCopyWith<$Res> {
  _$AppBarStateCopyWithImpl(this._value, this._then);

  final AppBarState _value;
  // ignore: unused_field
  final $Res Function(AppBarState) _then;

  @override
  $Res call({
    Object? successfully = freezed,
    Object? customUser = freezed,
  }) {
    return _then(_value.copyWith(
      successfully: successfully == freezed
          ? _value.successfully
          : successfully // ignore: cast_nullable_to_non_nullable
              as bool,
      customUser: customUser == freezed
          ? _value.customUser
          : customUser // ignore: cast_nullable_to_non_nullable
              as CustomUser,
    ));
  }

  @override
  $CustomUserCopyWith<$Res> get customUser {
    return $CustomUserCopyWith<$Res>(_value.customUser, (value) {
      return _then(_value.copyWith(customUser: value));
    });
  }
}

/// @nodoc
abstract class _$AppBarStateCopyWith<$Res>
    implements $AppBarStateCopyWith<$Res> {
  factory _$AppBarStateCopyWith(
          _AppBarState value, $Res Function(_AppBarState) then) =
      __$AppBarStateCopyWithImpl<$Res>;
  @override
  $Res call({bool successfully, CustomUser customUser});

  @override
  $CustomUserCopyWith<$Res> get customUser;
}

/// @nodoc
class __$AppBarStateCopyWithImpl<$Res> extends _$AppBarStateCopyWithImpl<$Res>
    implements _$AppBarStateCopyWith<$Res> {
  __$AppBarStateCopyWithImpl(
      _AppBarState _value, $Res Function(_AppBarState) _then)
      : super(_value, (v) => _then(v as _AppBarState));

  @override
  _AppBarState get _value => super._value as _AppBarState;

  @override
  $Res call({
    Object? successfully = freezed,
    Object? customUser = freezed,
  }) {
    return _then(_AppBarState(
      successfully: successfully == freezed
          ? _value.successfully
          : successfully // ignore: cast_nullable_to_non_nullable
              as bool,
      customUser: customUser == freezed
          ? _value.customUser
          : customUser // ignore: cast_nullable_to_non_nullable
              as CustomUser,
    ));
  }
}

/// @nodoc

class _$_AppBarState implements _AppBarState {
  const _$_AppBarState(
      {this.successfully = false, this.customUser = emptyUser});

  @JsonKey()
  @override
  final bool successfully;
  @JsonKey()
  @override
  final CustomUser customUser;

  @override
  String toString() {
    return 'AppBarState(successfully: $successfully, customUser: $customUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppBarState &&
            const DeepCollectionEquality()
                .equals(other.successfully, successfully) &&
            const DeepCollectionEquality()
                .equals(other.customUser, customUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(successfully),
      const DeepCollectionEquality().hash(customUser));

  @JsonKey(ignore: true)
  @override
  _$AppBarStateCopyWith<_AppBarState> get copyWith =>
      __$AppBarStateCopyWithImpl<_AppBarState>(this, _$identity);
}

abstract class _AppBarState implements AppBarState {
  const factory _AppBarState({bool successfully, CustomUser customUser}) =
      _$_AppBarState;

  @override
  bool get successfully;
  @override
  CustomUser get customUser;
  @override
  @JsonKey(ignore: true)
  _$AppBarStateCopyWith<_AppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
