import 'package:freezed_annotation/freezed_annotation.dart';

part 'culture.freezed.dart';

@freezed
class Culture with _$Culture {
  const factory Culture({
    String? id,
    required String cultureName,
    required double plantedArea,
    required double estimatedYield,
    required double collectedInPercentage,
    required double collected,
    required double waste,
    required double currentSeeds,
    required double budgetSeeds,
    required double currentFertilizers,
    required double budgetFertilizers,
    required double currentHerbicides,
    required double budgetHerbicides,
    required double currentInsecticides,
    required double budgetInsecticides,
    required double currentAdjuvant,
    required double budgetAdjuvant,
    required double currentOther,
    required double budgetOther,
  }) = _Culture;
}
