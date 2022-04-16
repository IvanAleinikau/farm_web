import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_page.freezed.dart';

@freezed
class TypePage with _$TypePage {
  const factory TypePage.home() = _HomePage;

  const factory TypePage.weather() = _WeatherPage;

  const factory TypePage.culture() = _CulturePage;

  const factory TypePage.task() = _TaskPage;

  const factory TypePage.seedingPlan() = _SeedingPlanPage;
}
