import 'package:farm_web/presentation/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool successfully,
    @Default(false) bool singOut,
    @Default(false) bool loading,
    @Default(emptyUser) CustomUser customUser,
  }) = _AuthState;
}
