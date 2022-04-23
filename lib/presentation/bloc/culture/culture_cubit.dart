import 'package:farm_web/data/culture_repository.dart';
import 'package:farm_web/presentation/bloc/culture/culture_state.dart';
import 'package:farm_web/presentation/model/culture.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CultureCubit extends Cubit<CultureState> {
  CultureCubit() : super(const CultureState()) {
    onInit();
  }

  final _repository = GetIt.instance<CultureRepository>();

  void onInit() {
    _fetchCulture();
  }

  void onCultureCreate(Culture culture) async {
    final result = await _repository.create(culture: culture);
    if (result == 'successfully') {
      emit(state.copyWith(cultureCreated: true));
      Future.delayed(const Duration(seconds: 1), () {
        // _fetchTasks();
      });
    }
    emit(state.copyWith(cultureCreated: false));
  }

  void _fetchCulture() async {
    final result = await _repository.read();
    emit(state.copyWith(cultureList: result));
    if (state.cultureList.isNotEmpty) {
      _getAverageValues();
    }
  }

  void _getAverageValues() {
    final List<Culture> cultures = state.cultureList;

    double averageFieldArea = 0;
    for (final element in cultures) {
      if (element.plantedArea != 0) {
        averageFieldArea += element.plantedArea;
      }
    }
    emit(state.copyWith(averageFieldArea: averageFieldArea / state.cultureList.length));

    double averageYield = 0;
    for (final element in cultures) {
      if (element.estimatedYield != 0) {
        averageYield += element.estimatedYield;
      }
    }
    emit(state.copyWith(averageYield: averageYield / state.cultureList.length));

    double averageEstimatedCost = 0;
    for (final element in cultures) {
      if (element.estimatedCost != 0) {
        averageEstimatedCost += element.estimatedCost;
      }
    }
    emit(state.copyWith(averageEstimatedCost: averageEstimatedCost / state.cultureList.length));

    double averageProfit = 0;
    for (final element in cultures) {
      if (element.profit != 0) {
        averageProfit += element.profit;
      }
    }
    emit(state.copyWith(averageProfit: averageProfit / state.cultureList.length));

    double averageSeeds = 0;
    for (final element in cultures) {
      if (element.budgetSeeds != 0) {
        averageSeeds += element.budgetSeeds;
      }
    }
    emit(state.copyWith(averageSeeds: averageSeeds / state.cultureList.length));

    double averageFertilizers = 0;
    for (final element in cultures) {
      if (element.budgetFertilizers != 0) {
        averageFertilizers += element.budgetFertilizers;
      }
    }
    emit(state.copyWith(averageFertilizers: averageFertilizers / state.cultureList.length));

    double averageHerbicides = 0;
    for (final element in cultures) {
      if (element.budgetHerbicides != 0) {
        averageHerbicides += element.budgetHerbicides;
      }
    }
    emit(state.copyWith(averageHerbicides: averageHerbicides / state.cultureList.length));

    double averageInsecticides = 0;
    for (final element in cultures) {
      if (element.budgetInsecticides != 0) {
        averageInsecticides += element.budgetInsecticides;
      }
    }
    emit(state.copyWith(averageInsecticides: averageInsecticides / state.cultureList.length));

    double averageAdjuvants = 0;
    for (final element in cultures) {
      if (element.budgetAdjuvant != 0) {
        averageAdjuvants += element.budgetAdjuvant;
      }
    }
    emit(state.copyWith(averageAdjuvants: averageAdjuvants / state.cultureList.length));

    double averageOther = 0;
    for (final element in cultures) {
      if (element.budgetOther != 0) {
        averageOther += element.budgetOther;
      }
    }
    emit(state.copyWith(averageOther: averageOther / state.cultureList.length));
  }
}
