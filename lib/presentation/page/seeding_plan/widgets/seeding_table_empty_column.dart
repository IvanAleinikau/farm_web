import 'package:flutter/material.dart';

class SeedingTableEmptyColumn extends StatelessWidget {
  const SeedingTableEmptyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TableItem(height: 70),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem.colored(height: 66),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 52),
        _TableItem(height: 56),
      ],
    );
  }
}

class _TableItem extends StatelessWidget {
  final double? height;

  final bool isColored;
  final Color? color;

  const _TableItem({
    Key? key,
    this.color,
    this.height,
  })  : isColored = false,
        super(key: key);

  const _TableItem.colored({
    Key? key,
    this.color = const Color(0x3306673E),
    this.height,
  })  : isColored = true,
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
    );
  }
}
