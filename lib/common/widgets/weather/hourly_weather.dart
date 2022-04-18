import 'package:farm_web/common/widgets/weather/weather_card.dart';
import 'package:farm_web/presentation/model/weather.dart';
import 'package:flutter/material.dart';

class HourlyWeather extends StatelessWidget {
  final List<Weather> hourlyWeather;

  const HourlyWeather({
    Key? key,
    required this.hourlyWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hourlyWeather.length,
        itemBuilder: (context, i) {
          return WeatherCard(
            title: '${hourlyWeather[i].time.hour}:${hourlyWeather[i].time.minute}0 ',
            date: '${hourlyWeather[i].time.day}.${hourlyWeather[i].time.month}',
            temperature: hourlyWeather[i].temperature.toInt(),
            iconCode: hourlyWeather[i].iconCode,
            temperatureFontSize: 20,
          );
        },
      ),
    );
  }
}
