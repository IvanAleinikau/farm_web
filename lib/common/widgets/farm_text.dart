import 'package:flutter/material.dart';

class FarmText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const FarmText(
    this.text, {
    Key? key,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
