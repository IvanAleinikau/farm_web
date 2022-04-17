import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_web/presentation/model/income_expenses.dart';
import 'package:farm_web/presentation/model/volume_waste.dart';

class HomeRepository {
  final _incomeExpenses = FirebaseFirestore.instance.collection('income_expenses');
  final _volumeWaste = FirebaseFirestore.instance.collection('volume_waste');
  late List<IncomeExpenses> _incomeExpensesList = [];
  late List<VolumeWaste> _volumeWasteList = [];

  Future<IncomeExpenses> readIncomeExpenses() async {
    _incomeExpensesList = [];
    final collection = await _incomeExpenses.get();
    for (var doc in collection.docs) {
      IncomeExpenses item = IncomeExpenses(
        income: doc['income'],
        expenses: doc['expenses'],
      );
      _incomeExpensesList.add(item);
    }
    return _incomeExpensesList.first;
  }

  Future<VolumeWaste> readVolumeWaste() async {
    _volumeWasteList = [];
    final collection = await _volumeWaste.get();
    for (var doc in collection.docs) {
      VolumeWaste item = VolumeWaste(
        volume: doc['volume'],
        waste: doc['waste'],
      );
      _volumeWasteList.add(item);
    }
    return _volumeWasteList.first;
  }
}
