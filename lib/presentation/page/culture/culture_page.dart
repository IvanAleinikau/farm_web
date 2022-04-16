import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:flutter/material.dart';

class CulturePage extends StatefulWidget {
  const CulturePage({Key? key}) : super(key: key);

  @override
  State<CulturePage> createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBody(
        typePage: const TypePage.culture(),
        child: Column(
          children: const [
            Center(
              child: Text('Культуры'),
            ),
          ],
        ),
      ),
    );
  }
}
