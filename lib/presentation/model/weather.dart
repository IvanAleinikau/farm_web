import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required int temperature,
    required String iconCode,
    required String description,
    required DateTime time,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: double.parse(json['main']['temp'].toString()).toInt(),
      iconCode: json['weather'][0]['icon'],
      description: json['weather'][0]['main'],
      time: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
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
