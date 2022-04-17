// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {bool successfully = false,
      bool singOut = false,
      bool loading = false,
      CustomUser customUser = emptyUser}) {
    return _AuthState(
      successfully: successfully,
      singOut: singOut,
      loading: loading,
      customUser: customUser,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get successfully => throw _privateConstructorUsedError;
  bool get singOut => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  CustomUser get customUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool successfully, bool singOut, bool loading, CustomUser customUser});

  $CustomUserCopyWith<$Res> get customUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? successfully = freezed,
    Object? singOut = freezed,
    Object? loading = freezed,
    Object? customUser = freezed,
  }) {
    return _then(_value.copyWith(
      successfully: successfully == freezed
          ? _value.successfully
          : successfully // ignore: cast_nullable_to_non_nullable
              as bool,
      singOut: singOut == freezed
          ? _value.singOut
          : singOut // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
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
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool successfully, bool singOut, bool loading, CustomUser customUser});

  @override
  $CustomUserCopyWith<$Res> get customUser;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? successfully = freezed,
    Object? singOut = freezed,
    Object? loading = freezed,
    Object? customUser = freezed,
  }) {
    return _then(_AuthState(
      successfully: successfully == freezed
          ? _value.successfully
          : successfully // ignore: cast_nullable_to_non_nullable
              as bool,
      singOut: singOut == freezed
          ? _value.singOut
          : singOut // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      customUser: customUser == freezed
          ? _value.customUser
          : customUser // ignore: cast_nullable_to_non_nullable
              as CustomUser,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.successfully = false,
      this.singOut = false,
      this.loading = false,
      this.customUser = emptyUser});

  @JsonKey()
  @override
  final bool successfully;
  @JsonKey()
  @override
  final bool singOut;
  @JsonKey()
  @override
  final bool loading;
  @JsonKey()
  @override
  final CustomUser customUser;

  @override
  String toString() {
    return 'AuthState(successfully: $successfully, singOut: $singOut, loading: $loading, customUser: $customUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.successfully, successfully) &&
            const DeepCollectionEquality().equals(other.singOut, singOut) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.customUser, customUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(successfully),
      const DeepCollectionEquality().hash(singOut),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(customUser));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {bool successfully,
      bool singOut,
      bool loading,
      CustomUser customUser}) = _$_AuthState;

  @override
  bool get successfully;
  @override
  bool get singOut;
  @override
  bool get loading;
  @override
  CustomUser get customUser;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
