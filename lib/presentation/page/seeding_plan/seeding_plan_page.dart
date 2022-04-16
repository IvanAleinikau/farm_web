import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/widget/page_app_bar.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:flutter/material.dart';

class SeedingPlanPage extends StatefulWidget {
  const SeedingPlanPage({Key? key}) : super(key: key);

  @override
  State<SeedingPlanPage> createState() => _SeedingPlanPageState();
}

class _SeedingPlanPageState extends State<SeedingPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBody(
        typePage: const TypePage.seedingPlan(),
        child: Column(
          children: const [
            PageAppBar(),
            Center(
              child: Text('План посева'),
            ),
          ],
        ),
      ),
    );
  }
}
