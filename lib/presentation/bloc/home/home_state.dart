import 'package:farm_web/presentation/model/income_expenses.dart';
import 'package:farm_web/presentation/model/volume_waste.dart';
import 'package:farm_web/presentation/model/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(emptyIncomeExpenses) IncomeExpenses incomeExpenses,
    @Default(emptyVolumeWaste) VolumeWaste volumeWaste,
    @Default([]) List<Weather> hourlyWeather,
    @Default([]) List<Weather> weather,
  }) = _HomeState;
}
