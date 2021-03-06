import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(),
            ),
            const Expanded(
              flex: 2,
              child: Text(
                'Текущие',
                style: FarmTextStyles.roboto20w400,
              ),
            ),
            const Expanded(
              flex: 2,
              child: Text(
                'Бюджет',
                style: FarmTextStyles.roboto20w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
