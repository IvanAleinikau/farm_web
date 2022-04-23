import 'package:freezed_annotation/freezed_annotation.dart';

part 'culture.freezed.dart';

@freezed
class Culture with _$Culture {
  const factory Culture({
    String? id,
    required String cultureName,
    required double plantedArea,
    required double estimatedYield,
    required double estimatedCost,
    required double profit,
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

const Culture emptyCulture = Culture(
  cultureName: '',
  plantedArea: 0,
  estimatedYield: 0,
  estimatedCost: 0,
  profit: 0,
  collectedInPercentage: 0,
  collected: 0,
  waste: 0,
  currentSeeds: 0,
  budgetSeeds: 0,
  currentFertilizers: 0,
  budgetFertilizers: 0,
  currentHerbicides: 0,
  budgetHerbicides: 0,
  currentInsecticides: 0,
  budgetInsecticides: 0,
  currentAdjuvant: 0,
  budgetAdjuvant: 0,
  currentOther: 0,
  budgetOther: 0,
);
