import 'dart:convert';

import 'package:farm_web/presentation/model/weather.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  static dynamic _apiKey = "4351b2c890c571031d66882b9e9c429d";

  Future<Weather> fetchCurrentWeather({required String city}) async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$_apiKey&units=metric');
    final response = await http.post(url);
    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  Future<List<Weather>> fetchHourlyWeather({required String city}) async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$_apiKey&units=metric');
    final response = await http.post(url);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<Weather> data = (jsonData['list'] as List<dynamic>)
          .map((item) => Weather.fromJsonForecast(item))
          .toList();
      return data;
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
