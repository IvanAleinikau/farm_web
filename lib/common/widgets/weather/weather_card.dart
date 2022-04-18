import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String title;
  final String date;
  final int temperature;
  final String iconCode;
  final double temperatureFontSize;
  final double iconScale;

  const WeatherCard({
    Key? key,
    required this.title,
    required this.date,
    required this.temperature,
    required this.iconCode,
    this.temperatureFontSize = 32,
    this.iconScale = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Image.network(
              "http://openweathermap.org/img/wn/$iconCode@2x.png",
              scale: iconScale,
            ),
            Text(
              '$temperature°',
              style: TextStyle(
                fontSize: temperatureFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                date,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
