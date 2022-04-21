import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class TableFooter extends StatelessWidget {
  final String title;
  final double firstAmount;
  final double secondAmount;

  const TableFooter({
    Key? key,
    required this.title,
    required this.firstAmount,
    required this.secondAmount,
  }) : super(key: key);

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
              child: Text(
                title,
                style: FarmTextStyles.roboto20w400.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: firstAmount.toString(),
                  style: FarmTextStyles.roboto20w400.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: ' руб./ар',
                      style: FarmTextStyles.roboto16w400.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: secondAmount.toString(),
                  style: FarmTextStyles.roboto20w400.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: ' руб./ар',
                      style: FarmTextStyles.roboto16w400.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
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
