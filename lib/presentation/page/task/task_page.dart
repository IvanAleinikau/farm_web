import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/widget/page_app_bar.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageBody(
        typePage: const TypePage.task(),
        child: Column(
          children: const [
            PageAppBar(),
            Center(
              child: Text('Задачи'),
            ),
          ],
        ),
      ),
    );
  }
}
