import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/home/widgets/content_widget.dart';
import 'package:farm_web/presentation/page/widget/page_app_bar.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBody(
        typePage: const TypePage.home(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, left: 40),
                      child: ContentWidget(
                        title: 'Погода',
                        height: 214,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, left: 24),
                      child: ContentWidget(
                        title: 'Общий объем',
                        height: 214,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, left: 24, right: 40),
                      child: ContentWidget(
                        title: 'Доходы/Расходы',
                        height: 214,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 24, left: 40, right: 40),
                      child: ContentWidget(
                        title: 'Задачи',
                        height: 274,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 24, left: 40, right: 40),
                      child: ContentWidget(
                        title: 'Детали сбора урожая',
                        height: 274,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
