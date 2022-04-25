import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required int temperature,
    required String iconCode,
    required String description,
    required DateTime time,
    @Default(0) int pressure,
    @Default(0) int humidity,
    @Default('') String sunrise,
    @Default('') String sunset,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: double.parse(json['main']['temp'].toString()).ceil(),
      iconCode: json['weather'][0]['icon'],
      description: json['weather'][0]['main'],
      pressure: double.parse(json['main']['pressure'].toString()).toInt(),
      humidity: double.parse(json['main']['humidity'].toString()).toInt(),
      time: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
      sunrise: DateFormat('HH:mm')
          .format(DateTime.fromMillisecondsSinceEpoch(json['sys']['sunrise'] * 1000)),
      sunset: DateFormat('HH:mm')
          .format(DateTime.fromMillisecondsSinceEpoch(json['sys']['sunset'] * 1000)),
    );
  }

  factory Weather.fromJsonForecast(Map<String, dynamic> json) {
    return Weather(
      cityName: '',
      temperature: double.parse(json['main']['temp'].toString()).toInt(),
      iconCode: json['weather'][0]['icon'],
      description: json['weather'][0]['main'],
      time: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
    );
  }
}

final Weather emptyWeather = Weather(
  cityName: '',
  temperature: 0,
  iconCode: '04d',
  description: '',
  time: DateTime(2022),
);
