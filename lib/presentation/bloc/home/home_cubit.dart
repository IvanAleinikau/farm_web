import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/data/home_repository.dart';
import 'package:farm_web/data/weather_repository.dart';
import 'package:farm_web/presentation/bloc/home/home_state.dart';
import 'package:farm_web/presentation/model/income_expenses.dart';
import 'package:farm_web/presentation/model/volume_waste.dart';
import 'package:farm_web/presentation/model/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(weather: [emptyWeather])) {
    onInit();
  }

  final _repository = GetIt.instance<HomeRepository>();
  final _weatherRepository = GetIt.instance<WeatherRepository>();

  void onInit() {
    _fetchIncomeExpenses();
    _fetchWeather();
  }

  Future<void> _fetchIncomeExpenses() async {
    final IncomeExpenses incomeExpenses = await _repository.readIncomeExpenses();
    final VolumeWaste volumeWaste = await _repository.readVolumeWaste();
    emit(state.copyWith(
      incomeExpenses: incomeExpenses,
      volumeWaste: volumeWaste,
    ));
  }

  void _fetchWeather() async {
    final Weather weather = await _weatherRepository.fetchCurrentWeather(city: FARM_CITY);
    final List<Weather> hourlyWeather =
        await _weatherRepository.fetchHourlyWeather(city: FARM_CITY);
    emit(state.copyWith(weather: [weather], hourlyWeather: hourlyWeather));
  }
}
