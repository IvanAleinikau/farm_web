import 'package:farm_web/presentation/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bar_state.freezed.dart';

@freezed
class AppBarState with _$AppBarState {
  const factory AppBarState({
    @Default(false) bool successfully,
    @Default(emptyUser) CustomUser customUser,
  }) = _AppBarState;
}
