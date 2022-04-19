import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class TableItem extends StatefulWidget {
  final String title;
  final Color? color;
  final double firstAmount;
  final double secondAmount;

  const TableItem({
    Key? key,
    this.color,
    required this.title,
    required this.firstAmount,
    required this.secondAmount,
  }) : super(key: key);

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                widget.title,
                style: FarmTextStyles.roboto20w400,
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: widget.firstAmount.toString(),
                  style: FarmTextStyles.roboto20w400,
                  children: const [
                    TextSpan(
                      text: ' руб./ар',
                      style: FarmTextStyles.roboto16w400,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: widget.secondAmount.toString(),
                  style: FarmTextStyles.roboto20w400,
                  children: const [
                    TextSpan(
                      text: ' руб./ар',
                      style: FarmTextStyles.roboto16w400,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
