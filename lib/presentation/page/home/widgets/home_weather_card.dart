import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class HomeWeatherCard extends StatelessWidget {
  final String title;
  final int temperature;
  final String iconCode;
  final double temperatureFontSize;
  final double iconScale;

  const HomeWeatherCard({
    Key? key,
    required this.title,
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
            Text(
              title,
              style: FarmTextStyles.roboto16w400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "http://openweathermap.org/img/wn/$iconCode@2x.png",
                  scale: iconScale,
                ),
                const SizedBox(width: 8),
                Text(
                  '$temperature°',
                  style: FarmTextStyles.roboto32w400.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 64,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
