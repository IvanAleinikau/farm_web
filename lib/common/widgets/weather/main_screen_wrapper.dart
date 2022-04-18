import 'package:farm_web/common/widgets/weather/hourly_weather.dart';
import 'package:farm_web/common/widgets/weather/weather_card.dart';
import 'package:farm_web/presentation/model/weather.dart';
import 'package:flutter/material.dart';

class MainScreenWrapper extends StatelessWidget {
  final Weather weather;
  final List<Weather> hourlyWeather;

  const MainScreenWrapper({
    Key? key,
    required this.weather,
    required this.hourlyWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.cityName,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(weather.description),
        const Spacer(),
        WeatherCard(
          title: "Now",
          date: '',
          temperature: weather.temperature,
          iconCode: weather.iconCode,
          temperatureFontSize: 64,
          iconScale: 1,
        ),
        const Spacer(),
        HourlyWeather(
          hourlyWeather: hourlyWeather,
        ),
      ],
    );
  }
}
