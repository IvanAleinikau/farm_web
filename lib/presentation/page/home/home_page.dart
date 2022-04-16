import 'package:farm_web/common/widgets/menu/type_page.dart';
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
        child: Column(
          children: const [
            PageAppBar(),
            Center(
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
