import 'package:farm_web/data/home_repository.dart';
import 'package:get_it/get_it.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(HomeRepository());
  }
}
