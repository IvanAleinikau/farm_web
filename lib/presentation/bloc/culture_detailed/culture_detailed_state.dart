import 'package:farm_web/presentation/model/culture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'culture_detailed_state.freezed.dart';

@freezed
class CultureDetailedState with _$CultureDetailedState {
  const factory CultureDetailedState({
    @Default(emptyCulture) Culture culture,
    @Default(false) bool cultureUpdated,
  }) = _CultureDetailedState;
}
