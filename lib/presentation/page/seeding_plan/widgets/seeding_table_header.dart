import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class SeedingTableHeader extends StatelessWidget {
  const SeedingTableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TableItem(
          text: 'Культуры',
          padding: EdgeInsets.only(left: 16, top: 6),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
          height: 70,
        ),
        _TableItem(
          text: 'Площадь поля',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Урожайность',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Расчётная стоимость',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Прибыль',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF4F4F4F),
          ),
          height: 52,
        ),
        _TableItem.colored(
          text: 'Производственные\nрасходы',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(fontWeight: FontWeight.w700),
          height: 66,
        ),
        _TableItem(
          text: 'Семена',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Удобрения',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Гербициды',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Инсектициды',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Адъюванты',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Другое',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(color: const Color(0xFF4F4F4F)),
          height: 52,
        ),
        _TableItem(
          text: 'Всего',
          padding: const EdgeInsets.only(left: 16),
          textStyle: FarmTextStyles.roboto18w400.copyWith(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF4F4F4F),
          ),
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(8)),
          height: 56,
        ),
      ],
    );
  }
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
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: textStyle ?? FarmTextStyles.roboto24w400.copyWith(color: const Color(0xFF4F4F4F)),
        ),
      ),
    );
  }
}
