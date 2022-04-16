import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/widget/page_app_bar.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBody(
        typePage: const TypePage.weather(),
        child: Column(
          children: const [
            PageAppBar(),
            Center(
              child: Text('Погода'),
            ),
          ],
        ),
      ),
    );
  }
}
