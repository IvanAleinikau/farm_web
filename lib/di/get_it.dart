import 'package:farm_web/data/auth_repository.dart';
import 'package:farm_web/data/culture_repository.dart';
import 'package:farm_web/data/home_repository.dart';
import 'package:farm_web/data/task_repository.dart';
import 'package:farm_web/data/weather_repository.dart';
import 'package:get_it/get_it.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(HomeRepository());
    GetIt.instance.registerSingleton(AuthRepository());
    GetIt.instance.registerSingleton(TaskRepository());
    GetIt.instance.registerSingleton(WeatherRepository());
    GetIt.instance.registerSingleton(CultureRepository());
  }
}
