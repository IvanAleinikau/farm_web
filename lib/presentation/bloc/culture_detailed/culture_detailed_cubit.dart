import 'package:farm_web/data/culture_repository.dart';
import 'package:farm_web/presentation/bloc/culture_detailed/culture_detailed_state.dart';
import 'package:farm_web/presentation/model/culture.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CultureDetailedCubit extends Cubit<CultureDetailedState> {
  final Culture culture;

  CultureDetailedCubit(
    this.culture,
  ) : super(CultureDetailedState(culture: culture)) {
    //onInit();
  }

  final _repository = GetIt.instance<CultureRepository>();

  void onInit() {}

  void onCultureUpdate(Culture culture) async {
    await _repository.update(culture).then((_) {
      emit(state.copyWith(cultureUpdated: true, culture: culture));
    });
    emit(state.copyWith(cultureUpdated: false));
  }
}
