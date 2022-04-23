import 'package:farm_web/presentation/model/culture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'culture_state.freezed.dart';

@freezed
class CultureState with _$CultureState {
  const factory CultureState({
    @Default([]) List<Culture> cultureList,
    @Default(false) bool cultureCreated,
    @Default(0) double averageFieldArea,
    @Default(0) double averageYield,
    @Default(0) double averageEstimatedCost,
    @Default(0) double averageProfit,
    @Default(0) double averageSeeds,
    @Default(0) double averageFertilizers,
    @Default(0) double averageHerbicides,
    @Default(0) double averageInsecticides,
    @Default(0) double averageAdjuvants,
    @Default(0) double averageOther,
  }) = _CultureState;
}
