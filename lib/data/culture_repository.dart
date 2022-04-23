import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_web/presentation/model/culture.dart';

class CultureRepository {
  final _collection = FirebaseFirestore.instance.collection('culture');

  Future<String> create({required Culture culture}) async {
    try {
      await _collection.add({
        'cultureName': culture.cultureName,
        'plantedArea': culture.plantedArea,
        'estimatedYield': culture.estimatedYield,
        'estimatedCost': culture.estimatedCost,
        'collectedInPercentage': culture.collectedInPercentage,
        'collected': culture.collected,
        'waste': culture.waste,
        'profit': culture.profit,
        'currentSeeds': culture.currentSeeds,
        'budgetSeeds': culture.budgetSeeds,
        'currentFertilizers': culture.currentFertilizers,
        'budgetFertilizers': culture.budgetFertilizers,
        'currentHerbicides': culture.currentHerbicides,
        'budgetHerbicides': culture.budgetHerbicides,
        'currentInsecticides': culture.currentInsecticides,
        'budgetInsecticides': culture.budgetInsecticides,
        'currentAdjuvant': culture.currentAdjuvant,
        'budgetAdjuvant': culture.budgetAdjuvant,
        'currentOther': culture.currentOther,
        'budgetOther': culture.budgetOther,
      });
      return 'successfully';
    } catch (_) {
      return 'error';
    }
  }

  Future<List<Culture>> read() async {
    final List<Culture> _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Culture item = Culture(
        id: doc.id,
        cultureName: doc['cultureName'],
        plantedArea: doc['plantedArea'],
        estimatedYield: doc['estimatedYield'],
        estimatedCost: doc['estimatedCost'],
        collectedInPercentage: doc['collectedInPercentage'],
        collected: doc['collected'],
        waste: doc['waste'],
        currentSeeds: doc['currentSeeds'],
        budgetSeeds: doc['budgetSeeds'],
        currentFertilizers: doc['currentFertilizers'],
        budgetFertilizers: doc['budgetFertilizers'],
        currentHerbicides: doc['currentHerbicides'],
        budgetHerbicides: doc['budgetHerbicides'],
        currentInsecticides: doc['currentInsecticides'],
        budgetInsecticides: doc['budgetInsecticides'],
        currentAdjuvant: doc['currentAdjuvant'],
        budgetAdjuvant: doc['budgetAdjuvant'],
        currentOther: doc['currentOther'],
        budgetOther: doc['budgetOther'],
        profit: doc['profit'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(Culture culture) async {
    await _collection.doc(culture.id).update({
      'cultureName': culture.cultureName,
      'plantedArea': culture.plantedArea,
      'estimatedYield': culture.estimatedYield,
      'estimatedCost': culture.estimatedCost,
      'collectedInPercentage': culture.collectedInPercentage,
      'collected': culture.collected,
      'waste': culture.waste,
      'currentSeeds': culture.currentSeeds,
      'budgetSeeds': culture.budgetSeeds,
      'currentFertilizers': culture.currentFertilizers,
      'budgetFertilizers': culture.budgetFertilizers,
      'currentHerbicides': culture.currentHerbicides,
      'budgetHerbicides': culture.budgetHerbicides,
      'currentInsecticides': culture.currentInsecticides,
      'budgetInsecticides': culture.budgetInsecticides,
      'currentAdjuvant': culture.currentAdjuvant,
      'budgetAdjuvant': culture.budgetAdjuvant,
      'currentOther': culture.currentOther,
      'budgetOther': culture.budgetOther,
      'profit': culture.profit,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
