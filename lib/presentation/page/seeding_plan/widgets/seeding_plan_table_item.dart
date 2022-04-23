import 'package:farm_web/presentation/model/culture.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class SeedingPlanTableItem extends StatelessWidget {
  final Culture culture;

  const SeedingPlanTableItem({
    Key? key,
    required this.culture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Column(
        children: [
          _TableItem(
            height: 70,
            title: culture.cultureName,
            textStyle: FarmTextStyles.roboto18w400.copyWith(fontWeight: FontWeight.w700),
          ),
          _TableItem(
            height: 52,
            title: '${culture.plantedArea} ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.estimatedYield} т/ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.estimatedCost} руб./т',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.profit} руб.',
            textStyle: FarmTextStyles.roboto24w400.copyWith(fontWeight: FontWeight.w700),
          ),
          const _TableItem.colored(height: 66),
          _TableItem(
            height: 52,
            title: '${culture.budgetSeeds} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.budgetFertilizers} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.budgetHerbicides} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.budgetInsecticides} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.budgetAdjuvant} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 52,
            title: '${culture.budgetOther} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
          _TableItem(
            height: 56,
            title: '${_getAmount()} руб./ар',
            textStyle: FarmTextStyles.roboto24w400,
          ),
        ],
      ),
    );
  }

  double _getAmount() {
    double amount = 0;
    if (culture.budgetOther != 0) {
      amount += culture.budgetOther;
    }
    if (culture.budgetAdjuvant != 0) {
      amount += culture.budgetAdjuvant;
    }
    if (culture.budgetInsecticides != 0) {
      amount += culture.budgetInsecticides;
    }
    if (culture.budgetHerbicides != 0) {
      amount += culture.budgetHerbicides;
    }
    if (culture.budgetFertilizers != 0) {
      amount += culture.budgetFertilizers;
    }
    if (culture.budgetSeeds != 0) {
      amount += culture.budgetSeeds;
    }
    return amount;
  }
}

class _TableItem extends StatelessWidget {
  final String title;
  final double? height;
  final TextStyle textStyle;

  final bool isColored;
  final Color? color;

  const _TableItem({
    Key? key,
    this.color,
    this.height,
    required this.title,
    required this.textStyle,
  })  : isColored = false,
        super(key: key);

  const _TableItem.colored({
    Key? key,
    this.color = const Color(0x3306673E),
    this.height,
  })  : isColored = true,
        title = '',
        textStyle = const TextStyle(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: !isColored
            ? Border.all(
                color: const Color(0xFFE0E0E0),
                width: 0.5,
              )
            : null,
      ),
      child: Center(
        child: Text(
          title,
          style: textStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
