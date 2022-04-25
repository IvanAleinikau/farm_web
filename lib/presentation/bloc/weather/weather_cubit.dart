import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/data/weather_repository.dart';
import 'package:farm_web/presentation/bloc/weather/weather_state.dart';
import 'package:farm_web/presentation/model/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherState(weather: [emptyWeather])) {
    onInit();
  }

  final _repository = GetIt.instance<WeatherRepository>();

  void onInit() async {
    final Weather weather = await _repository.fetchCurrentWeather(city: FARM_CITY);
    final List<Weather> hourlyWeather = await _repository.fetchHourlyWeather(city: FARM_CITY);
    emit(state.copyWith(weather: [weather], hourlyWeather: hourlyWeather));
  }
}
