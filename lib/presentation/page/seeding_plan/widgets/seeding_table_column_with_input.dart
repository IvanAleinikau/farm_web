import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class SeedingTableColumnWithInput extends StatefulWidget {
  final TextEditingController culture;
  final TextEditingController fieldArea;

  final TextEditingController yield;

  final TextEditingController estimatedCost;

  final TextEditingController profit;

  final TextEditingController seeds;

  final TextEditingController fertilizers;

  final TextEditingController herbicides;

  final TextEditingController insecticides;

  final TextEditingController adjuvants;

  final TextEditingController other;

  const SeedingTableColumnWithInput({
    Key? key,
    required this.culture,
    required this.fieldArea,
    required this.yield,
    required this.estimatedCost,
    required this.profit,
    required this.seeds,
    required this.fertilizers,
    required this.herbicides,
    required this.insecticides,
    required this.adjuvants,
    required this.other,
  }) : super(key: key);

  @override
  State<SeedingTableColumnWithInput> createState() => _SeedingTableColumnWithInputState();
}

class _SeedingTableColumnWithInputState extends State<SeedingTableColumnWithInput> {
  @override
  void initState() {
    widget.profit.text = '0';
    widget.other.text = '0';
    widget.adjuvants.text = '0';
    widget.insecticides.text = '0';
    widget.herbicides.text = '0';
    widget.fertilizers.text = '0';
    widget.seeds.text = '0';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          _TableItem(
            height: 70,
            child: _TableInput(
              controller: widget.culture,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              controller: widget.fieldArea,
              suffixTitle: 'ар',
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'т/ар',
              controller: widget.yield,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./т',
              controller: widget.estimatedCost,
            ),
          ),
          _TableItem(
            height: 52,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0 руб.',
                  style: FarmTextStyles.roboto24w400.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const _TableItem.colored(height: 66),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.seeds,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.fertilizers,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.herbicides,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.insecticides,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.adjuvants,
            ),
          ),
          _TableItem(
            height: 52,
            child: _TableInput(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 45),
              suffixTitle: 'руб./ар',
              controller: widget.other,
            ),
          ),
          _TableItem(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0 руб./ар',
                  style: FarmTextStyles.roboto24w400.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TableInput extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String? suffixTitle;
  final TextEditingController controller;

  const _TableInput({
    Key? key,
    required this.padding,
    this.suffixTitle,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: suffixTitle != null
              ? SizedBox(
                  width: 70,
                  child: Center(
                    child: Text(
                      ' $suffixTitle',
                      style: FarmTextStyles.roboto16w400,
                    ),
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.only(left: 6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Color(0xFFB1B1B1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class _TableItem extends StatelessWidget {
  final double? height;
  final Widget? child;

  final bool isColored;
  final Color? color;

  const _TableItem({
    Key? key,
    this.color,
    this.height,
    this.child,
  })  : isColored = false,
        super(key: key);

  const _TableItem.colored({
    Key? key,
    this.color = const Color(0x3306673E),
    this.height,
    this.child,
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
      child: child,
    );
  }
}
