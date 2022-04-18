import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class TableHead extends StatelessWidget {
  const TableHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              const SizedBox(width: 34),
              Text(
                'Задача',
                style: FarmTextStyles.roboto16w400.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            'Дата',
            style: FarmTextStyles.roboto16w400.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            'Ответственный',
            style: FarmTextStyles.roboto16w400.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
      ],
    );
  }
}
