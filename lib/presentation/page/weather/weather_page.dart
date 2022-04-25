import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/common/widgets/weather/weather_card.dart';
import 'package:farm_web/presentation/bloc/weather/weather_cubit.dart';
import 'package:farm_web/presentation/bloc/weather/weather_state.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late WeatherCubit _cubit;

  @override
  void initState() {
    _cubit = WeatherCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: PageBody(
            typePage: const TypePage.weather(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                controller: ScrollController(keepScrollOffset: false),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 22, bottom: 14),
                          child: Text(
                            'Погода',
                            style: FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Брест',
                            style: FarmTextStyles.roboto16w400.copyWith(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "http://openweathermap.org/img/wn/${state.weather.first.iconCode}@2x.png",
                                scale: 1,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                '${state.weather.first.temperature}°',
                                style: FarmTextStyles.roboto32w400.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 64,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            state.weather.first.description,
                            style: FarmTextStyles.roboto32w400,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'По часам',
                      style: FarmTextStyles.roboto24w400,
                    ),
                    SizedBox(
                      height: 200.0,
                      child: Row(
                        children: [
                          Image.asset(
                            FarmIcons.arrowLeftIcon,
                            height: 24,
                            width: 24,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 200.0,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.hourlyWeather.length,
                                itemBuilder: (context, i) {
                                  return WeatherCard(
                                    title:
                                        '${state.hourlyWeather[i].time.hour}:${state.hourlyWeather[i].time.minute}0 ',
                                    date:
                                        '${state.hourlyWeather[i].time.day}.${state.hourlyWeather[i].time.month}',
                                    temperature: state.hourlyWeather[i].temperature.toInt(),
                                    iconCode: state.hourlyWeather[i].iconCode,
                                    temperatureFontSize: 20,
                                  );
                                },
                              ),
                            ),
                          ),
                          Image.asset(
                            FarmIcons.arrowRightIcon,
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        _WeatherItem.icon(
                          title: 'Влажность',
                          icon: CupertinoIcons.drop_fill,
                          content: '${state.weather.first.humidity}%',
                        ),
                        const SizedBox(width: 10),
                        _WeatherItem.icon(
                          title: 'Давление',
                          icon: CupertinoIcons.thermometer,
                          content: '${state.weather.first.pressure} мм рт. ст.',
                        ),
                        const SizedBox(width: 10),
                        _WeatherItem.icon(
                          title: 'Восход солнца',
                          icon: CupertinoIcons.sunrise,
                          content: state.weather.first.sunrise,
                        ),
                        const SizedBox(width: 10),
                        _WeatherItem.icon(
                          title: 'Заход солнца',
                          icon: CupertinoIcons.sunset,
                          content: state.weather.first.sunset,
                        ),
                      ],
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _WeatherItem extends StatelessWidget {
  final String title;
  final String content;
  final IconData? icon;

  final bool withIcon;

  const _WeatherItem({
    Key? key,
    required this.title,
    this.icon,
    required this.content,
  })  : withIcon = false,
        super(key: key);

  const _WeatherItem.icon({
    Key? key,
    required this.title,
    required this.icon,
    required this.content,
  })  : withIcon = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8),
            child: Row(
              children: [
                if (withIcon) ...[
                  Icon(
                    icon,
                    color: const Color(0xFFA0A0A0),
                    size: 24,
                  ),
                  const SizedBox(width: 10),
                ],
                Text(
                  title,
                  style: FarmTextStyles.roboto16w400,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 8, right: 12),
              child: Text(
                content,
                style: FarmTextStyles.roboto32w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
