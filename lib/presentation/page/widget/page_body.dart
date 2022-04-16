import 'package:farm_web/common/widgets/menu/farm_menu.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:flutter/material.dart';

class PageBody extends StatelessWidget {
  final TypePage typePage;
  final Widget child;

  const PageBody({
    Key? key,
    required this.child,
    required this.typePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        FarmMenu(
          typePage: typePage,
        ),
        SizedBox(
          width: size.width * 0.8,
          height: size.height,
          child: child,
        ),
      ],
    );
  }
}
