import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class SeedingTableFooter extends StatelessWidget {
  final double averageFieldArea;
  final double averageYield;
  final double averageEstimatedCost;
  final double averageProfit;
  final double averageSeeds;
  final double averageFertilizers;
  final double averageHerbicides;
  final double averageInsecticides;
  final double averageAdjuvants;
  final double averageOther;

  const SeedingTableFooter({
    Key? key,
    required this.averageFieldArea,
    required this.averageYield,
    required this.averageEstimatedCost,
    required this.averageProfit,
    required this.averageSeeds,
    required this.averageFertilizers,
    required this.averageHerbicides,
    required this.averageInsecticides,
    required this.averageAdjuvants,
    required this.averageOther,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TableItem(
          text: 'Общая/\nСредняя',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto18w400.copyWith(fontWeight: FontWeight.bold),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(8)),
          height: 70,
        ),
        _TableItem(
          text: '$averageFieldArea ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageYield т/ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageEstimatedCost руб./т',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageProfit руб.',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(
            fontWeight: FontWeight.bold,
          ),
          height: 52,
        ),
        _TableItem.colored(
          text: '',
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          textStyle: FarmTextStyles.roboto18w400.copyWith(fontWeight: FontWeight.w700),
          height: 66,
        ),
        _TableItem(
          text: '$averageSeeds руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageFertilizers руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageHerbicides руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageInsecticides руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageAdjuvants руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$averageOther руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: '$_getAmount руб./ар',
          padding: EdgeInsets.zero,
          textStyle: FarmTextStyles.roboto24w400.copyWith(
            fontWeight: FontWeight.w700,
          ),
          borderRadius: const BorderRadius.only(bottomRight: Radius.circular(8)),
          height: 56,
        ),
      ],
    );
  }

  double get _getAmount =>
      averageSeeds +
      averageFertilizers +
      averageHerbicides +
      averageInsecticides +
      averageAdjuvants +
      averageOther;
}

class _TableItem extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;
  final double? height;

  final bool isColored;
  final Color? color;

  const _TableItem({
    Key? key,
    required this.text,
    required this.padding,
    this.borderRadius,
    this.textStyle,
    this.color,
    this.height,
  })  : isColored = false,
        super(key: key);

  const _TableItem.colored({
    Key? key,
    required this.text,
    required this.padding,
    this.borderRadius,
    this.textStyle,
    this.color = const Color(0x3306673E),
    this.height,
  })  : isColored = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 220,
      decoration: BoxDecoration(
        color: color,
        border: !isColored
            ? Border.all(
                color: const Color(0xFFE0E0E0),
                width: 0.5,
              )
            : null,
        borderRadius: borderRadius,
      ),
      padding: padding,
      child: Center(
        child: Text(
          text,
          style: textStyle ?? FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
        ),
      ),
    );
  }
}
