import 'package:farm_web/presentation/model/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default([]) List<Weather> weather,
    @Default(false) bool error,
    @Default([]) List<Weather> hourlyWeather,
    @Default(false) bool loading,
  }) = _WeatherState;
}
