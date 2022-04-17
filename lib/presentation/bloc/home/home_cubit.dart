import 'package:farm_web/data/home_repository.dart';
import 'package:farm_web/presentation/bloc/home/home_state.dart';
import 'package:farm_web/presentation/model/income_expenses.dart';
import 'package:farm_web/presentation/model/volume_waste.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState()) {
    onInit();
  }

  final _repository = GetIt.instance<HomeRepository>();

  void onInit() {
    _fetchIncomeExpenses();
  }

  Future<void> _fetchIncomeExpenses() async {
    final IncomeExpenses incomeExpenses = await _repository.readIncomeExpenses();
    final VolumeWaste volumeWaste = await _repository.readVolumeWaste();
    emit(state.copyWith(
      incomeExpenses: incomeExpenses,
      volumeWaste: volumeWaste,
    ));
  }
}
